import 'package:butterfly/api/file_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lw_file_system/lw_file_system.dart';

import 'tree.dart';

enum MoveMode { duplicate, move }

class FileSystemAssetMoveDialog extends StatefulWidget {
  final MoveMode? moveMode;
  final List<AssetLocation> assets;
  final DocumentFileSystem fileSystem;
  const FileSystemAssetMoveDialog(
      {super.key,
      this.moveMode,
      required this.assets,
      required this.fileSystem});

  @override
  State<FileSystemAssetMoveDialog> createState() =>
      _FileSystemAssetMoveDialogState();
}

class _FileSystemAssetMoveDialogState extends State<FileSystemAssetMoveDialog> {
  final TextEditingController _nameController = TextEditingController();
  late String selectedPath;

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.assets.first.fileNameWithoutExtension;
    selectedPath = widget.assets.first.parent;
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  bool isSingleFile() => widget.assets.length == 1;

  Future<void> _move(bool duplicate) async {
    final navigator = Navigator.of(context);
    String newPath = '';
    for (final asset in widget.assets) {
      newPath = selectedPath;
      if (selectedPath != '/') {
        newPath += '/';
      }
      newPath += isSingleFile()
          ? _nameController.text
          : asset.fileNameWithoutExtension;
      newPath += '.${asset.fileExtension}';
      if (duplicate) {
        await widget.fileSystem.duplicateAsset(asset.path, newPath);
      } else {
        await widget.fileSystem.moveAsset(asset.path, newPath);
      }
    }
    navigator.pop(newPath);
  }

  @override
  Widget build(BuildContext context) {
    String title = switch (widget.moveMode) {
      MoveMode.duplicate => AppLocalizations.of(context).duplicate,
      MoveMode.move => AppLocalizations.of(context).move,
      _ => AppLocalizations.of(context).changeDocumentPath,
    };
    return AlertDialog(
        actions: [
          TextButton(
            child: Text(AppLocalizations.of(context).cancel),
            onPressed: () => Navigator.of(context).pop(),
          ),
          if (widget.moveMode != null)
            ElevatedButton(
              child: Text(AppLocalizations.of(context).ok),
              onPressed: () => _move(widget.moveMode == MoveMode.duplicate),
            ),
          if (widget.moveMode == null) ...[
            ElevatedButton(
                onPressed: () => _move(true),
                child: Text(AppLocalizations.of(context).duplicate)),
            ElevatedButton(
                onPressed: () => _move(false),
                child: Text(AppLocalizations.of(context).move)),
          ]
        ],
        title: Text(title),
        scrollable: true,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FileSystemDirectoryTreeView(
              fileSystem: widget.fileSystem,
              path: '/',
              onPathSelected: (path) => selectedPath = path,
              initialExpanded: true,
            ),
            if (isSingleFile()) ...[
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                    filled: true, hintText: AppLocalizations.of(context).name),
                autofocus: true,
                controller: _nameController,
              ),
            ],
          ],
        ));
  }
}
