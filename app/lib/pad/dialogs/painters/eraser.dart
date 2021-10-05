import 'package:butterfly/pad/bloc/document_bloc.dart';
import 'package:butterfly/painter/eraser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EraserPainterDialog extends StatefulWidget {
  final DocumentBloc bloc;
  final int painterIndex;
  const EraserPainterDialog({Key? key, required this.bloc, required this.painterIndex})
      : super(key: key);

  @override
  _EraserPainterDialogState createState() => _EraserPainterDialogState();
}

class _EraserPainterDialogState extends State<EraserPainterDialog> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _strokeWidthController = TextEditingController();
  final TextEditingController _strokeMultiplierController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: Dialog(child: BlocBuilder<DocumentBloc, DocumentState>(builder: (context, state) {
        if (state is! DocumentLoadSuccess) return Container();
        var painter = state.document.painters[widget.painterIndex] as EraserPainter;
        return Container(
            constraints: const BoxConstraints(maxWidth: 600, maxHeight: 800),
            child: StatefulBuilder(builder: (context, setState) {
              if (_nameController.text != painter.name) _nameController.text = painter.name;
              if (_strokeWidthController.text != painter.strokeWidth.toStringAsFixed(2)) {
                _strokeWidthController.text = painter.strokeWidth.toStringAsFixed(2);
              }
              if (_strokeMultiplierController.text != painter.strokeMultiplier.toStringAsFixed(2)) {
                _strokeMultiplierController.text = painter.strokeMultiplier.toStringAsFixed(2);
              }
              return Scaffold(
                  appBar: AppBar(
                    title: const Text("Eraser"),
                    leading: const Icon(PhosphorIcons.eraserLight),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(children: [
                            TextField(
                                decoration: const InputDecoration(labelText: "Name"),
                                controller: _nameController,
                                onChanged: (value) =>
                                    setState(() => painter = painter.copyWith(name: value))),
                            Row(children: [
                              ConstrainedBox(
                                  constraints: const BoxConstraints(maxWidth: 100),
                                  child: TextField(
                                    decoration: const InputDecoration(labelText: "Stroke width"),
                                    controller: _strokeWidthController,
                                    onChanged: (value) => setState(() => painter =
                                        painter.copyWith(strokeWidth: double.tryParse(value))),
                                  )),
                              Expanded(
                                child: Slider(
                                    value: painter.strokeWidth.clamp(0, 20),
                                    min: 0,
                                    max: 20,
                                    onChanged: (value) => setState(
                                        () => painter = painter.copyWith(strokeWidth: value))),
                              )
                            ]),
                            Row(children: [
                              ConstrainedBox(
                                  constraints: const BoxConstraints(maxWidth: 100),
                                  child: TextField(
                                    decoration:
                                        const InputDecoration(labelText: "Stroke multiplier"),
                                    controller: _strokeMultiplierController,
                                    onChanged: (value) => setState(() => painter =
                                        painter.copyWith(strokeMultiplier: double.tryParse(value))),
                                  )),
                              Expanded(
                                child: Slider(
                                    value: painter.strokeMultiplier.clamp(0, 5),
                                    min: 0,
                                    max: 5,
                                    onChanged: (value) => setState(
                                        () => painter = painter.copyWith(strokeMultiplier: value))),
                              )
                            ])
                          ]),
                        ),
                        const Divider(),
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  primary: Theme.of(context).colorScheme.error),
                              child: const Text("DELETE"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                            actions: [
                                              TextButton(
                                                child: const Text("NO"),
                                                onPressed: () => Navigator.of(context).pop(),
                                              ),
                                              TextButton(
                                                child: const Text("YES"),
                                                onPressed: () {
                                                  widget.bloc
                                                      .add(PainterRemoved(widget.painterIndex));
                                                  Navigator.of(context).pop();
                                                },
                                              )
                                            ],
                                            title: const Text("Are you sure?"),
                                            content: const Text(
                                                "Do you really want to delete this pen?")));
                              },
                            ),
                            Expanded(child: Container()),
                            TextButton(
                              child: const Text("CANCEL"),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                            ElevatedButton(
                              child: const Text("OK"),
                              onPressed: () {
                                widget.bloc.add(PainterChanged(painter, widget.painterIndex));
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ));
            }));
      })),
    );
  }
}
