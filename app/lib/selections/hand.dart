part of 'selection.dart';

class Hand {
  const Hand();
}

const kHand = Hand();

class HandSelection extends Selection<Hand> {
  final TextEditingController _scaleController =
          TextEditingController(text: '100'),
      _rotationController = TextEditingController(text: '0');
  HandSelection(super.selected);

  @override
  String getLocalizedName(BuildContext context) =>
      AppLocalizations.of(context)!.hand;

  @override
  buildProperties(BuildContext context) {
    final bloc = context.read<DocumentBloc>();
    final state = bloc.state;
    if (state is! DocumentLoadSuccess) return [];
    final property = state.document.handProperty;
    void updateProperty(HandProperty property) {
      context.read<DocumentBloc>().add(HandPropertyChanged(property));
    }

    final transformCubit = context.read<TransformCubit>();
    final transform = transformCubit.state;
    _scaleController.text = (transform.size * 100).toStringAsFixed(0);
    _rotationController.text = transform.rotation.toStringAsFixed(2);

    return [
      CheckboxListTile(
          value: property.includeEraser,
          title: Text(AppLocalizations.of(context)!.includeEraser),
          onChanged: (value) => updateProperty(property.copyWith(
              includeEraser: value ?? property.includeEraser))),
      const Divider(),
      OffsetPropertyView(
        title: Text(AppLocalizations.of(context)!.position),
        value: -transform.position,
        onChanged: (value) => transformCubit.setPosition(-value),
      ),
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: _scaleController,
              onSubmitted: (value) {
                var viewportSize = context.size ?? MediaQuery.of(context).size;
                var scale = double.tryParse(value) ?? 100;
                scale /= 100;
                transformCubit.size(scale,
                    Offset(viewportSize.width / 2, viewportSize.height / 2));
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  filled: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  labelText: AppLocalizations.of(context)!.zoom),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _rotationController,
              onSubmitted: (value) {
                var rotation = double.tryParse(value) ?? 0;
                transformCubit.rotate(rotation);
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  filled: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  labelText: AppLocalizations.of(context)!.rotation),
            ),
          ),
        ],
      ),
    ];
  }

  @override
  IconData getIcon({bool filled = false}) =>
      filled ? PhosphorIcons.handFill : PhosphorIcons.handLight;
}
