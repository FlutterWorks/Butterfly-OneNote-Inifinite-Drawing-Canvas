part of 'selection.dart';

class UtilitiesSelection extends Selection<UtilitiesState> {
  UtilitiesSelection(super.selected);

  @override
  IconGetter get icon => PhosphorIcons.wrench;

  @override
  String getLocalizedName(BuildContext context) =>
      AppLocalizations.of(context).document;

  @override
  List<String> get help => ['utilities'];

  @override
  List<Widget> buildProperties(BuildContext context) {
    final cubit = context.read<CurrentIndexCubit>();
    final currentIndex = cubit.state;
    return [
      ...super.buildProperties(context),
      _UtilitiesView(
        state: selected.first,
        option: currentIndex.viewOption,
        onStateChanged: (state) => cubit.updateUtilities(utilities: state),
        onToolChanged: (option) => cubit.updateUtilities(view: option),
      )
    ];
  }
}

class _UtilitiesView extends StatefulWidget {
  final UtilitiesState state;
  final ViewOption option;
  final ValueChanged<UtilitiesState> onStateChanged;
  final ValueChanged<ViewOption> onToolChanged;

  const _UtilitiesView(
      {required this.state,
      required this.option,
      required this.onStateChanged,
      required this.onToolChanged});

  @override
  State<_UtilitiesView> createState() => _UtilitiesViewState();
}

class _UtilitiesViewState extends State<_UtilitiesView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final TextEditingController _nameController = TextEditingController(),
      _descriptionController = TextEditingController();
  int _expandedIndex = -1;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(_onTabChange);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
  }

  @override
  void didUpdateWidget(covariant _UtilitiesView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state != widget.state) {
      setState(() {});
    }
  }

  void _onTabChange() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DocumentBloc>();
    final state = bloc.state;
    if (state is! DocumentLoadSuccess) return const SizedBox.shrink();
    final metadata = state.metadata;
    if (_nameController.text != metadata.name) {
      _nameController.text = metadata.name;
    }
    if (_descriptionController.text != metadata.description) {
      _descriptionController.text = metadata.description;
    }
    return Column(children: [
      TabBar(
        controller: _tabController,
        isScrollable: true,
        tabs: <List<dynamic>>[
          [PhosphorIconsLight.file, AppLocalizations.of(context).project],
          [PhosphorIconsLight.book, AppLocalizations.of(context).page],
          [PhosphorIconsLight.eye, AppLocalizations.of(context).view],
          [PhosphorIconsLight.camera, AppLocalizations.of(context).camera],
        ]
            .map((e) =>
                HorizontalTab(icon: PhosphorIcon(e[0]), label: Text(e[1])))
            .toList(),
      ),
      const SizedBox(height: 8),
      Builder(
          builder: (context) => [
                Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context).name,
                        filled: true,
                      ),
                      onChanged: (value) {
                        bloc.add(DocumentDescriptionChanged(name: value));
                        state.save();
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      minLines: 3,
                      maxLines: 5,
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context).description,
                        border: const OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        bloc.add(
                            DocumentDescriptionChanged(description: value));
                        state.save();
                      },
                    ),
                    const SizedBox(height: 8),
                    MenuItemButton(
                      leadingIcon:
                          const PhosphorIcon(PhosphorIconsLight.camera),
                      onPressed: () async {
                        final viewport =
                            state.currentIndexCubit.state.cameraViewport;
                        final width = viewport.width?.toDouble() ??
                            kThumbnailWidth.toDouble();
                        final realHeight = viewport.height?.toDouble() ??
                            kThumbnailHeight.toDouble();
                        final height =
                            width * kThumbnailHeight / kThumbnailWidth;
                        final heightOffset = (height - realHeight) / 2;
                        final quality = kThumbnailWidth / width;
                        final thumbnail = await state.currentIndexCubit.render(
                          state.data,
                          state.page,
                          state.info,
                          ImageExportOptions(
                            width: width,
                            height: height,
                            quality: quality,
                            scale: viewport.scale,
                            x: viewport.x,
                            y: viewport.y + heightOffset,
                          ),
                        );
                        if (thumbnail == null) return;
                        final bytes = thumbnail.buffer.asUint8List();
                        context
                            .read<DocumentBloc>()
                            .add(ThumbnailCaptured(bytes));
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(AppLocalizations.of(context)
                                  .capturedThumbnail),
                            ),
                          );
                        }
                      },
                      child:
                          Text(AppLocalizations.of(context).captureThumbnail),
                    ),
                    MenuItemButton(
                      leadingIcon: Tooltip(
                        message: state.data.isEncrypted
                            ? AppLocalizations.of(context).encrypted
                            : AppLocalizations.of(context).unencrypted,
                        child: Icon(
                          state.data.isEncrypted
                              ? PhosphorIconsLight.lock
                              : PhosphorIconsLight.lockOpen,
                        ),
                      ),
                      child: Text(
                        state.data.isEncrypted
                            ? AppLocalizations.of(context).unencrypt
                            : AppLocalizations.of(context).encrypt,
                      ),
                      onPressed: () async {
                        if (state.data.isEncrypted) {
                          final result = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title:
                                  Text(AppLocalizations.of(context).unencrypt),
                              content: Text(AppLocalizations.of(context)
                                  .unencryptWarning),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, false),
                                  child: Text(MaterialLocalizations.of(context)
                                      .cancelButtonLabel),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: Text(MaterialLocalizations.of(context)
                                      .okButtonLabel),
                                ),
                              ],
                            ),
                          );
                          if (result != true) return;
                          context
                              .read<DocumentBloc>()
                              .add(EncryptionChanged(null));
                        } else {
                          String password = '';
                          bool showPassword = false,
                              showConfirmPassword = false;
                          final formKey = GlobalKey<FormState>();
                          final result = await showDialog<bool>(
                            context: context,
                            builder: (context) => StatefulBuilder(
                              builder: (context, setState) => Form(
                                key: formKey,
                                child: AlertDialog(
                                  title: Text(
                                      AppLocalizations.of(context).encrypt),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText:
                                              AppLocalizations.of(context)
                                                  .password,
                                          filled: true,
                                          suffixIcon: IconButton(
                                            icon: Icon(showPassword
                                                ? PhosphorIconsLight.eye
                                                : PhosphorIconsLight.eyeSlash),
                                            onPressed: () => setState(
                                              () =>
                                                  showPassword = !showPassword,
                                            ),
                                          ),
                                        ),
                                        obscureText: !showPassword,
                                        autofocus: true,
                                        onChanged: (value) => password = value,
                                        validator: (value) =>
                                            value?.isEmpty ?? true
                                                ? AppLocalizations.of(context)
                                                    .shouldNotEmpty
                                                : null,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText:
                                              AppLocalizations.of(context)
                                                  .confirmPassword,
                                          filled: true,
                                          suffixIcon: IconButton(
                                            icon: Icon(showConfirmPassword
                                                ? PhosphorIconsLight.eye
                                                : PhosphorIconsLight.eyeSlash),
                                            onPressed: () => setState(
                                              () => showConfirmPassword =
                                                  !showConfirmPassword,
                                            ),
                                          ),
                                        ),
                                        obscureText: !showConfirmPassword,
                                        validator: (value) => value != password
                                            ? AppLocalizations.of(context)
                                                .passwordMismatch
                                            : null,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, false),
                                      child: Text(
                                          MaterialLocalizations.of(context)
                                              .cancelButtonLabel),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        if (formKey.currentState?.validate() ??
                                            false) {
                                          Navigator.pop(context, true);
                                        }
                                      },
                                      child: Text(
                                          MaterialLocalizations.of(context)
                                              .okButtonLabel),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                          if (result != true) return;
                          context
                              .read<DocumentBloc>()
                              .add(EncryptionChanged(password));
                        }
                      },
                    )
                  ],
                ),
                Column(children: [
                  MenuItemButton(
                    leadingIcon: const PhosphorIcon(PhosphorIconsLight.image),
                    shortcut: const SingleActivator(LogicalKeyboardKey.keyB,
                        control: true),
                    onPressed: () {
                      Actions.maybeInvoke<BackgroundIntent>(
                          context, BackgroundIntent(context));
                    },
                    child: Text(AppLocalizations.of(context).background),
                  ),
                ]),
                Column(children: [
                  ExpansionPanelList(
                      expansionCallback: (index, isExpanded) {
                        setState(() {
                          _expandedIndex = isExpanded ? index : -1;
                        });
                      },
                      children: [
                        ExpansionPanel(
                          canTapOnHeader: true,
                          isExpanded: _expandedIndex == 0,
                          headerBuilder: (context, isExpanded) => ListTile(
                            leading: Checkbox(
                              value: widget.state.gridEnabled,
                              onChanged: (value) => widget.onStateChanged(
                                widget.state
                                    .copyWith(gridEnabled: value ?? false),
                              ),
                            ),
                            title: Text(AppLocalizations.of(context).grid),
                          ),
                          body: Column(children: [
                            OffsetPropertyView(
                              value: Offset(widget.option.gridXSize,
                                  widget.option.gridYSize),
                              title: Text(AppLocalizations.of(context).size),
                              onChanged: (value) => widget.onToolChanged(
                                widget.option.copyWith(
                                    gridXSize: value.dx, gridYSize: value.dy),
                              ),
                            ),
                            const SizedBox(height: 8),
                            ColorField(
                              title: Text(AppLocalizations.of(context).color),
                              value:
                                  Color(widget.option.gridColor).withAlpha(255),
                              onChanged: (value) => widget.onToolChanged(
                                widget.option.copyWith(
                                    gridColor: convertOldColor(
                                        // ignore: deprecated_member_use
                                        value.value,
                                        widget.option.gridColor)),
                              ),
                            ),
                            const SizedBox(height: 8),
                            ExactSlider(
                              header: Text(AppLocalizations.of(context).alpha),
                              value: Color(widget.option.gridColor)
                                  // ignore: deprecated_member_use
                                  .alpha
                                  .toDouble(),
                              defaultValue: 255,
                              min: 0,
                              max: 255,
                              fractionDigits: 0,
                              onChangeEnd: (value) => widget.onToolChanged(
                                widget.option.copyWith(
                                  gridColor: Color(widget.option.gridColor)
                                      .withAlpha(value.toInt())
                                      // ignore: deprecated_member_use
                                      .value,
                                ),
                              ),
                            ),
                          ]),
                        ),
                        ExpansionPanel(
                          canTapOnHeader: true,
                          isExpanded: _expandedIndex == 1,
                          headerBuilder: (context, isExpanded) => ListTile(
                            leading: Checkbox(
                              value: widget.state.rulerEnabled,
                              onChanged: (value) => widget.onStateChanged(widget
                                  .state
                                  .copyWith(rulerEnabled: value ?? false)),
                            ),
                            title: Text(AppLocalizations.of(context).ruler),
                          ),
                          body: Column(children: [
                            OffsetPropertyView(
                              title:
                                  Text(AppLocalizations.of(context).position),
                              onChanged: (value) => widget.onStateChanged(widget
                                  .state
                                  .copyWith(rulerPosition: value.toPoint())),
                              value: widget.state.rulerPosition.toOffset(),
                            ),
                            const SizedBox(height: 8),
                            ExactSlider(
                              header: Text(AppLocalizations.of(context).angle),
                              value: widget.state.rulerAngle,
                              defaultValue: 0,
                              min: 0,
                              max: 360,
                              onChangeEnd: (value) => widget.onStateChanged(
                                  widget.state.copyWith(rulerAngle: value)),
                            ),
                          ]),
                        ),
                      ]),
                ]),
                Column(
                  children: [
                    OffsetPropertyView(
                      title: Text(AppLocalizations.of(context).position),
                      value: context.read<TransformCubit>().state.position,
                      round: 2,
                      onChanged: (value) =>
                          context.read<TransformCubit>().teleport(value),
                    ),
                    const SizedBox(height: 8),
                    ExactSlider(
                      header: Text(AppLocalizations.of(context).zoom),
                      value: context.read<TransformCubit>().state.size * 100,
                      defaultValue: 100,
                      min: kMinZoom * 100,
                      max: kMaxZoom * 100,
                      onChangeEnd: (value) {
                        final size = context
                            .read<CurrentIndexCubit>()
                            .state
                            .cameraViewport
                            .toSize();
                        context.read<TransformCubit>().size(value / 100,
                            Offset(size.width / 2, size.height / 2));
                        context.read<DocumentBloc>().bake();
                      },
                    ),
                    const SizedBox(height: 8),
                    CheckboxListTile(
                      value: widget.state.fullSelection,
                      onChanged: (value) => widget.onStateChanged(
                          widget.state.copyWith(fullSelection: value ?? false)),
                      title: Text(AppLocalizations.of(context).fullSelection),
                      subtitle: Text(AppLocalizations.of(context)
                          .fullSelectionDescription),
                    ),
                  ],
                ),
              ][_tabController.index]),
    ]);
  }
}
