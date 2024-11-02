part of '../selection.dart';

class LaserToolSelection extends ToolSelection<LaserTool> {
  LaserToolSelection(super.selected);

  @override
  List<Widget> buildProperties(BuildContext context) {
    return [
      ...super.buildProperties(context),
      ExactSlider(
        header: Text(AppLocalizations.of(context).strokeWidth),
        value: selected.first.strokeWidth,
        min: 0,
        max: 70,
        defaultValue: 25,
        onChangeEnd: (value) => update(
          context,
          selected.map((e) => e.copyWith(strokeWidth: value)).toList(),
        ),
      ),
      ExactSlider(
        header: Text(AppLocalizations.of(context).thinning),
        value: selected.first.thinning,
        min: 0,
        max: 1,
        defaultValue: .4,
        onChangeEnd: (value) => update(
          context,
          selected.map((e) => e.copyWith(thinning: value)).toList(),
        ),
      ),
      const SizedBox(height: 4),
      ColorField(
        value: Color(selected.first.color),
        onChanged: (value) => update(
          context,
          selected.map((e) => e.copyWith(color: value.value)).toList(),
        ),
        title: Text(AppLocalizations.of(context).color),
      ),
      ExactSlider(
        value: selected.first.duration,
        min: 1,
        max: 20,
        defaultValue: 5,
        header: Text(AppLocalizations.of(context).duration),
        onChangeEnd: (value) => update(
          context,
          selected.map((e) => e.copyWith(duration: value)).toList(),
        ),
      ),
      const SizedBox(height: 15),
    ];
  }

  @override
  Selection insert(dynamic element) {
    if (element is LaserTool) {
      return LaserToolSelection([...selected, element]);
    }
    return super.insert(element);
  }
}
