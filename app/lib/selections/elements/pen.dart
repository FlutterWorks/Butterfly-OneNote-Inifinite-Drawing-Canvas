part of '../selection.dart';

class PenElementSelection extends ElementSelection<PenElement> {
  PenElementSelection(super.selected);

  @override
  List<Widget> buildProperties(BuildContext context) {
    final element = selected.first.element;
    return [
      ...super.buildProperties(context),
      ColorField(
        title: Text(AppLocalizations.of(context).color),
        value: Color(element.property.color),
        onChanged: (color) => updateElements(
            context,
            elements
                .map((e) => e.copyWith(
                    // ignore: deprecated_member_use
                    property: e.property.copyWith(color: color.value)))
                .toList()),
      ),
    ];
  }

  @override
  Selection insert(element) {
    if (element is Renderer<PenElement>) {
      return PenElementSelection([...selected, element]);
    }
    return super.insert(element);
  }

  @override
  IconGetter get icon => PhosphorIcons.pen;

  @override
  String getLocalizedName(BuildContext context) =>
      AppLocalizations.of(context).pen;
}
