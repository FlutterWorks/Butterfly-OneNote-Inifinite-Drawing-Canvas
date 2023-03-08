import 'dart:math';

import 'package:butterfly/cubits/transform.dart';
import 'package:butterfly/dialogs/name.dart';
import 'package:butterfly/dialogs/presentation.dart';
import 'package:butterfly/helpers/offset_helper.dart';
import 'package:butterfly_api/butterfly_api.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../bloc/document_bloc.dart';
import '../../../dialogs/pdf_export.dart';
import '../../../handlers/handler.dart';
import 'timeline.dart';

class PresentationToolbarView extends StatefulWidget {
  final ValueChanged<int>? onFrameChanged;
  final ValueChanged<String?>? onAnimationChanged;
  final int frame;
  final String? animation;
  final PresentationRunningState runningState;
  final ValueChanged<PresentationRunningState>? onRunningStateChanged;

  const PresentationToolbarView({
    super.key,
    this.onFrameChanged,
    this.onAnimationChanged,
    this.animation,
    this.frame = 0,
    this.runningState = PresentationRunningState.paused,
    this.onRunningStateChanged,
  });

  @override
  State<PresentationToolbarView> createState() =>
      _PresentationToolbarViewState();
}

class _PresentationToolbarViewState extends State<PresentationToolbarView> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _frameController = TextEditingController(),
      _durationController = TextEditingController(),
      _fpsController = TextEditingController();
  String? _selected;
  int _frame = 0;
  @override
  void initState() {
    super.initState();
    _frame = widget.frame;
    if (widget.animation != null) {
      _selected = widget.animation;
    } else {
      _resetSelection();
    }
  }

  @override
  void didUpdateWidget(covariant PresentationToolbarView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.frame != widget.frame) {
      setState(() => _frame = widget.frame);
    } else if (oldWidget.animation != widget.animation) {
      setState(() => _selected = widget.animation);
    } else if (oldWidget.runningState != widget.runningState) {
      setState(() {});
    }
  }

  void _setAnimation(String? value) {
    setState(() => _selected = value);
    widget.onAnimationChanged?.call(value);
  }

  void _setFrame(int value) {
    setState(() => _frame = value);
    widget.onFrameChanged?.call(value);
  }

  void _resetSelection() {
    final state = context.read<DocumentBloc>().state;
    if (state is! DocumentLoadSuccess) return;
    _setAnimation(state.document.animations.firstOrNull?.name);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _frameController.dispose();
    _durationController.dispose();
    _fpsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<DocumentBloc>().state;
    if (state is! DocumentLoadSuccess) return const SizedBox();
    final colorScheme = Theme.of(context).colorScheme;
    final animation =
        _selected == null ? null : state.document.getAnimation(_selected!);
    AnimationKey? key;
    if (animation != null) {
      _durationController.text = animation.duration.toString();
      _fpsController.text = animation.fps.toString();
      _frameController.text = _frame.toString();
      key = animation.keys[_frame];
    }
    final defaultKey = key ?? const AnimationKey();
    final keyframeEnabled = defaultKey.cameraPosition != null &&
        defaultKey.cameraZoom != null &&
        defaultKey.breakpoint;
    final cameraEnabled =
        defaultKey.cameraPosition != null && defaultKey.cameraZoom != null;
    void setKey(AnimationKey key) {
      final bloc = context.read<DocumentBloc>();
      bloc.add(
        DocumentAnimationUpdated(
          animation!.name,
          animation.copyWith(
            keys: Map.of(animation.keys)..[_frame] = key,
          ),
        ),
      );
    }

    return BlocBuilder<TransformCubit, CameraTransform>(
      builder: (context, transform) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: LayoutBuilder(
          builder: (context, constraints) => Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DropdownMenu<String>(
                          width: 200,
                          key: UniqueKey(),
                          inputDecorationTheme:
                              const InputDecorationTheme(filled: true),
                          dropdownMenuEntries: state.document.animations
                              .map((e) => DropdownMenuEntry(
                                    value: e.name,
                                    label: e.name,
                                  ))
                              .toList(),
                          onSelected: _setAnimation,
                          initialSelection: _selected,
                        ),
                        MenuAnchor(
                          builder: (context, controller, child) {
                            return IconButton(
                              onPressed: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                              icon: const Icon(Icons.more_vert),
                            );
                          },
                          menuChildren: [
                            MenuItemButton(
                              leadingIcon: const Icon(PhosphorIcons.plusLight),
                              onPressed: () async {
                                final bloc = context.read<DocumentBloc>();
                                final name = await showDialog<String>(
                                  context: context,
                                  builder: (context) => NameDialog(
                                    validator: defaultNameValidator(
                                        context,
                                        null,
                                        state.document.animations
                                            .map((e) => e.name)
                                            .toList()),
                                  ),
                                );
                                if (name == null) return;
                                bloc.add(
                                  DocumentAnimationAdded(AnimationTrack(
                                    name: name,
                                  )),
                                );
                                _setAnimation(name);
                              },
                              child: Text(AppLocalizations.of(context).create),
                            ),
                            MenuItemButton(
                              leadingIcon: const Icon(PhosphorIcons.copyLight),
                              onPressed: animation == null
                                  ? null
                                  : () async {
                                      final bloc = context.read<DocumentBloc>();
                                      final name = await showDialog<String>(
                                        context: context,
                                        builder: (context) => NameDialog(
                                          validator: defaultNameValidator(
                                              context,
                                              null,
                                              state.document.animations
                                                  .map((e) => e.name)
                                                  .toList()),
                                        ),
                                      );
                                      if (name == null) return;
                                      bloc.add(
                                        DocumentAnimationAdded(
                                            animation.copyWith(name: name)),
                                      );
                                      _setAnimation(name);
                                      _setFrame(0);
                                    },
                              child:
                                  Text(AppLocalizations.of(context).duplicate),
                            ),
                            MenuItemButton(
                              leadingIcon:
                                  const Icon(PhosphorIcons.pencilLight),
                              onPressed: animation == null
                                  ? null
                                  : () async {
                                      final bloc = context.read<DocumentBloc>();
                                      final name = await showDialog<String>(
                                        context: context,
                                        builder: (context) => NameDialog(
                                          validator: defaultNameValidator(
                                              context,
                                              animation.name,
                                              state.document.animations
                                                  .map((e) => e.name)
                                                  .toList()),
                                        ),
                                      );
                                      if (name == null) return;
                                      bloc.add(
                                        DocumentAnimationAdded(
                                            animation.copyWith(
                                          name: name,
                                        )),
                                      );
                                      _setAnimation(name);
                                    },
                              child: Text(AppLocalizations.of(context).rename),
                            ),
                            MenuItemButton(
                              leadingIcon: const Icon(PhosphorIcons.trashLight),
                              onPressed: animation == null
                                  ? null
                                  : () {
                                      final bloc = context.read<DocumentBloc>();
                                      bloc.add(
                                        DocumentAnimationRemoved(
                                            animation.name),
                                      );
                                      setState(() {
                                        _resetSelection();
                                      });
                                    },
                              child: Text(AppLocalizations.of(context).delete),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: widget.runningState !=
                                  PresentationRunningState.running
                              ? const Icon(PhosphorIcons.playLight)
                              : const Icon(PhosphorIcons.pauseLight),
                          onPressed: animation == null
                              ? null
                              : () {
                                  if (widget.runningState ==
                                      PresentationRunningState.running) {
                                    widget.onRunningStateChanged
                                        ?.call(PresentationRunningState.paused);
                                  } else {
                                    widget.onRunningStateChanged?.call(
                                        PresentationRunningState.running);
                                  }
                                },
                        ),
                        IconButton(
                          icon: const Icon(PhosphorIcons.stopLight),
                          onPressed: animation == null
                              ? null
                              : () {
                                  _setFrame(0);
                                  widget.onRunningStateChanged
                                      ?.call(PresentationRunningState.paused);
                                },
                        ),
                        MenuAnchor(
                          builder: (context, controller, child) => IconButton(
                            icon: const Icon(PhosphorIcons.recordLight),
                            onPressed: animation == null
                                ? null
                                : () {
                                    if (controller.isOpen) {
                                      controller.close();
                                    } else {
                                      controller.open();
                                    }
                                  },
                          ),
                          menuChildren: [
                            MenuItemButton(
                              leadingIcon:
                                  const Icon(PhosphorIcons.recordLight),
                              child: Text(
                                AppLocalizations.of(context).keyframe,
                                style: TextStyle(
                                  color: keyframeEnabled
                                      ? colorScheme.primary
                                      : null,
                                ),
                              ),
                              onPressed: () => setKey(keyframeEnabled
                                  ? defaultKey.copyWith(
                                      cameraPosition: null,
                                      cameraZoom: null,
                                      breakpoint: false,
                                    )
                                  : defaultKey.copyWith(
                                      cameraPosition:
                                          transform.position.toPoint(),
                                      cameraZoom: transform.size,
                                      breakpoint: true,
                                    )),
                            ),
                            const Divider(),
                            MenuItemButton(
                              leadingIcon:
                                  const Icon(PhosphorIcons.flowArrowLight),
                              child: Text(
                                AppLocalizations.of(context).camera,
                                style: TextStyle(
                                  color: cameraEnabled
                                      ? colorScheme.primary
                                      : null,
                                ),
                              ),
                              onPressed: () => setKey(cameraEnabled
                                  ? defaultKey.copyWith(
                                      cameraPosition: null,
                                      cameraZoom: null,
                                    )
                                  : defaultKey.copyWith(
                                      cameraPosition:
                                          transform.position.toPoint(),
                                      cameraZoom: transform.size,
                                    )),
                            ),
                            MenuItemButton(
                              leadingIcon:
                                  const Icon(PhosphorIcons.cameraLight),
                              child: Text(
                                AppLocalizations.of(context).breakpoint,
                                style: TextStyle(
                                  color: defaultKey.breakpoint
                                      ? colorScheme.primary
                                      : null,
                                ),
                              ),
                              onPressed: () => setKey(defaultKey.copyWith(
                                breakpoint: !defaultKey.breakpoint,
                              )),
                            ),
                            const Divider(),
                            MenuItemButton(
                              leadingIcon: const Icon(
                                  PhosphorIcons.arrowsOutCardinalLight),
                              child: Text(
                                AppLocalizations.of(context).position,
                                style: TextStyle(
                                  color: defaultKey.cameraPosition != null
                                      ? colorScheme.primary
                                      : null,
                                ),
                              ),
                              onPressed: () => setKey(defaultKey.copyWith(
                                cameraPosition: transform.position.toPoint(),
                              )),
                            ),
                            MenuItemButton(
                              leadingIcon: const Icon(
                                  PhosphorIcons.magnifyingGlassLight),
                              child: Text(
                                AppLocalizations.of(context).zoom,
                                style: TextStyle(
                                  color: defaultKey.cameraZoom != null
                                      ? colorScheme.primary
                                      : null,
                                ),
                              ),
                              onPressed: () => setKey(defaultKey.copyWith(
                                cameraZoom: transform.size,
                              )),
                            ),
                            const Divider(),
                            MenuItemButton(
                              leadingIcon: const Icon(PhosphorIcons.trashLight),
                              onPressed: key == null
                                  ? null
                                  : () {
                                      final bloc = context.read<DocumentBloc>();
                                      bloc.add(DocumentAnimationUpdated(
                                          animation!.name,
                                          animation.copyWith(
                                            keys: Map.from(animation.keys)
                                              ..remove(_frame),
                                          )));
                                    },
                              child: Text(
                                AppLocalizations.of(context).delete,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (animation != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                labelText: AppLocalizations.of(context).fps,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                              ),
                              controller: _fpsController,
                              textAlign: TextAlign.center,
                              onEditingComplete: () {},
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                labelText: AppLocalizations.of(context).frame,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                              ),
                              controller: _frameController,
                              textAlign: TextAlign.center,
                              onFieldSubmitted: (value) {
                                final frame = int.tryParse(value.trim());
                                if (frame != null) {
                                  _setFrame(frame);
                                }
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: max(200, constraints.maxWidth * 0.25),
                            child: PresentationTimelineView(
                              animationKeys: animation.keys.keys.toList(),
                              currentFrame: _frame,
                              duration: animation.duration,
                              onFrameChanged: _setFrame,
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                labelText:
                                    AppLocalizations.of(context).duration,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                              ),
                              controller: _durationController,
                              textAlign: TextAlign.center,
                              onFieldSubmitted: (value) {
                                final duration = int.tryParse(value.trim());
                                if (duration != null && duration > 0) {
                                  context.read<DocumentBloc>().add(
                                        DocumentAnimationUpdated(
                                          animation.name,
                                          animation.copyWith(
                                              duration: duration),
                                        ),
                                      );
                                }
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          MenuAnchor(
                            builder: (context, controller, child) => IconButton(
                              onPressed: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                              icon: const Icon(PhosphorIcons.presentationLight),
                            ),
                            menuChildren: [
                              MenuItemButton(
                                leadingIcon:
                                    const Icon(PhosphorIcons.playCircleLight),
                                child: Text(AppLocalizations.of(context).play),
                                onPressed: () async {
                                  final bloc = context.read<DocumentBloc>();
                                  final result = await showDialog<bool>(
                                    context: context,
                                    builder: (context) =>
                                        const PresentationControlsDialog(),
                                  );
                                  if (result != true) return;
                                  bloc.add(PresentationModeEntered(
                                    animation,
                                  ));
                                },
                              ),
                              const Divider(),
                              /*
                              MenuItemButton(
                                leadingIcon:
                                    const Icon(PhosphorIcons.videoCameraLight),
                                child: Text(AppLocalizations.of(context).video),
                              ),
                              MenuItemButton(
                                leadingIcon:
                                    const Icon(PhosphorIcons.filmStripLight),
                                child: Text(AppLocalizations.of(context).image),
                              ),*/
                              MenuItemButton(
                                leadingIcon:
                                    const Icon(PhosphorIcons.fileLight),
                                child: Text(AppLocalizations.of(context).pdf),
                                onPressed: () {
                                  final size = MediaQuery.of(context).size;
                                  showDialog(
                                    context: context,
                                    builder: (context) => ExportPresetsDialog(
                                      areas: {
                                        0,
                                        ...animation.keys.entries
                                            .where((element) =>
                                                element.value.breakpoint)
                                            .map((e) => e.key)
                                      }.map(
                                        (e) {
                                          final zoom = animation
                                                  .interpolateCameraZoom(e) ??
                                              transform.size;
                                          return AreaPreset(
                                            name: e.toString(),
                                            area: Area(
                                              position: animation
                                                      .interpolateCameraPosition(
                                                          e) ??
                                                  transform.position.toPoint(),
                                              height: size.height / zoom,
                                              width: size.width / zoom,
                                            ),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
