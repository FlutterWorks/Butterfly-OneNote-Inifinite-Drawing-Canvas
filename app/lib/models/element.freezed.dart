// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElementConstraint _$ElementConstraintFromJson(Map<String, dynamic> json) {
  return _ElementConstraint.fromJson(json);
}

/// @nodoc
mixin _$ElementConstraint {
  double get size => throw _privateConstructorUsedError;
  double get length => throw _privateConstructorUsedError;
  bool get includeArea => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementConstraintCopyWith<ElementConstraint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementConstraintCopyWith<$Res> {
  factory $ElementConstraintCopyWith(
          ElementConstraint value, $Res Function(ElementConstraint) then) =
      _$ElementConstraintCopyWithImpl<$Res>;
  $Res call({double size, double length, bool includeArea});
}

/// @nodoc
class _$ElementConstraintCopyWithImpl<$Res>
    implements $ElementConstraintCopyWith<$Res> {
  _$ElementConstraintCopyWithImpl(this._value, this._then);

  final ElementConstraint _value;
  // ignore: unused_field
  final $Res Function(ElementConstraint) _then;

  @override
  $Res call({
    Object? size = freezed,
    Object? length = freezed,
    Object? includeArea = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      includeArea: includeArea == freezed
          ? _value.includeArea
          : includeArea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ElementConstraintCopyWith<$Res>
    implements $ElementConstraintCopyWith<$Res> {
  factory _$$_ElementConstraintCopyWith(_$_ElementConstraint value,
          $Res Function(_$_ElementConstraint) then) =
      __$$_ElementConstraintCopyWithImpl<$Res>;
  @override
  $Res call({double size, double length, bool includeArea});
}

/// @nodoc
class __$$_ElementConstraintCopyWithImpl<$Res>
    extends _$ElementConstraintCopyWithImpl<$Res>
    implements _$$_ElementConstraintCopyWith<$Res> {
  __$$_ElementConstraintCopyWithImpl(
      _$_ElementConstraint _value, $Res Function(_$_ElementConstraint) _then)
      : super(_value, (v) => _then(v as _$_ElementConstraint));

  @override
  _$_ElementConstraint get _value => super._value as _$_ElementConstraint;

  @override
  $Res call({
    Object? size = freezed,
    Object? length = freezed,
    Object? includeArea = freezed,
  }) {
    return _then(_$_ElementConstraint(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      includeArea: includeArea == freezed
          ? _value.includeArea
          : includeArea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementConstraint implements _ElementConstraint {
  const _$_ElementConstraint(
      {this.size = 0, this.length = 0, this.includeArea = true});

  factory _$_ElementConstraint.fromJson(Map<String, dynamic> json) =>
      _$$_ElementConstraintFromJson(json);

  @override
  @JsonKey()
  final double size;
  @override
  @JsonKey()
  final double length;
  @override
  @JsonKey()
  final bool includeArea;

  @override
  String toString() {
    return 'ElementConstraint(size: $size, length: $length, includeArea: $includeArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementConstraint &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality()
                .equals(other.includeArea, includeArea));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(includeArea));

  @JsonKey(ignore: true)
  @override
  _$$_ElementConstraintCopyWith<_$_ElementConstraint> get copyWith =>
      __$$_ElementConstraintCopyWithImpl<_$_ElementConstraint>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementConstraintToJson(
      this,
    );
  }
}

abstract class _ElementConstraint implements ElementConstraint {
  const factory _ElementConstraint(
      {final double size,
      final double length,
      final bool includeArea}) = _$_ElementConstraint;

  factory _ElementConstraint.fromJson(Map<String, dynamic> json) =
      _$_ElementConstraint.fromJson;

  @override
  double get size;
  @override
  double get length;
  @override
  bool get includeArea;
  @override
  @JsonKey(ignore: true)
  _$$_ElementConstraintCopyWith<_$_ElementConstraint> get copyWith =>
      throw _privateConstructorUsedError;
}

ElementConstraints _$ElementConstraintsFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'scaled':
      return ScaledElementConstraints.fromJson(json);
    case 'fixed':
      return FixedElementConstraints.fromJson(json);
    case 'dynamic':
      return DynamicElementConstraints.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ElementConstraints',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ElementConstraints {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scale) scaled,
    required TResult Function(double height, double width) fixed,
    required TResult Function(
            double height, double width, double aspectRatio, bool includeArea)
        dynamic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScaledElementConstraints value) scaled,
    required TResult Function(FixedElementConstraints value) fixed,
    required TResult Function(DynamicElementConstraints value) dynamic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementConstraintsCopyWith<$Res> {
  factory $ElementConstraintsCopyWith(
          ElementConstraints value, $Res Function(ElementConstraints) then) =
      _$ElementConstraintsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ElementConstraintsCopyWithImpl<$Res>
    implements $ElementConstraintsCopyWith<$Res> {
  _$ElementConstraintsCopyWithImpl(this._value, this._then);

  final ElementConstraints _value;
  // ignore: unused_field
  final $Res Function(ElementConstraints) _then;
}

/// @nodoc
abstract class _$$ScaledElementConstraintsCopyWith<$Res> {
  factory _$$ScaledElementConstraintsCopyWith(_$ScaledElementConstraints value,
          $Res Function(_$ScaledElementConstraints) then) =
      __$$ScaledElementConstraintsCopyWithImpl<$Res>;
  $Res call({double scale});
}

/// @nodoc
class __$$ScaledElementConstraintsCopyWithImpl<$Res>
    extends _$ElementConstraintsCopyWithImpl<$Res>
    implements _$$ScaledElementConstraintsCopyWith<$Res> {
  __$$ScaledElementConstraintsCopyWithImpl(_$ScaledElementConstraints _value,
      $Res Function(_$ScaledElementConstraints) _then)
      : super(_value, (v) => _then(v as _$ScaledElementConstraints));

  @override
  _$ScaledElementConstraints get _value =>
      super._value as _$ScaledElementConstraints;

  @override
  $Res call({
    Object? scale = freezed,
  }) {
    return _then(_$ScaledElementConstraints(
      scale == freezed
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScaledElementConstraints implements ScaledElementConstraints {
  const _$ScaledElementConstraints(this.scale, {final String? $type})
      : $type = $type ?? 'scaled';

  factory _$ScaledElementConstraints.fromJson(Map<String, dynamic> json) =>
      _$$ScaledElementConstraintsFromJson(json);

  @override
  final double scale;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ElementConstraints.scaled(scale: $scale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScaledElementConstraints &&
            const DeepCollectionEquality().equals(other.scale, scale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(scale));

  @JsonKey(ignore: true)
  @override
  _$$ScaledElementConstraintsCopyWith<_$ScaledElementConstraints>
      get copyWith =>
          __$$ScaledElementConstraintsCopyWithImpl<_$ScaledElementConstraints>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scale) scaled,
    required TResult Function(double height, double width) fixed,
    required TResult Function(
            double height, double width, double aspectRatio, bool includeArea)
        dynamic,
  }) {
    return scaled(scale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
  }) {
    return scaled?.call(scale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
    required TResult orElse(),
  }) {
    if (scaled != null) {
      return scaled(scale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScaledElementConstraints value) scaled,
    required TResult Function(FixedElementConstraints value) fixed,
    required TResult Function(DynamicElementConstraints value) dynamic,
  }) {
    return scaled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
  }) {
    return scaled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
    required TResult orElse(),
  }) {
    if (scaled != null) {
      return scaled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScaledElementConstraintsToJson(
      this,
    );
  }
}

abstract class ScaledElementConstraints implements ElementConstraints {
  const factory ScaledElementConstraints(final double scale) =
      _$ScaledElementConstraints;

  factory ScaledElementConstraints.fromJson(Map<String, dynamic> json) =
      _$ScaledElementConstraints.fromJson;

  double get scale;
  @JsonKey(ignore: true)
  _$$ScaledElementConstraintsCopyWith<_$ScaledElementConstraints>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FixedElementConstraintsCopyWith<$Res> {
  factory _$$FixedElementConstraintsCopyWith(_$FixedElementConstraints value,
          $Res Function(_$FixedElementConstraints) then) =
      __$$FixedElementConstraintsCopyWithImpl<$Res>;
  $Res call({double height, double width});
}

/// @nodoc
class __$$FixedElementConstraintsCopyWithImpl<$Res>
    extends _$ElementConstraintsCopyWithImpl<$Res>
    implements _$$FixedElementConstraintsCopyWith<$Res> {
  __$$FixedElementConstraintsCopyWithImpl(_$FixedElementConstraints _value,
      $Res Function(_$FixedElementConstraints) _then)
      : super(_value, (v) => _then(v as _$FixedElementConstraints));

  @override
  _$FixedElementConstraints get _value =>
      super._value as _$FixedElementConstraints;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$FixedElementConstraints(
      height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixedElementConstraints implements FixedElementConstraints {
  const _$FixedElementConstraints(this.height, this.width,
      {final String? $type})
      : $type = $type ?? 'fixed';

  factory _$FixedElementConstraints.fromJson(Map<String, dynamic> json) =>
      _$$FixedElementConstraintsFromJson(json);

  @override
  final double height;
  @override
  final double width;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ElementConstraints.fixed(height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixedElementConstraints &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$$FixedElementConstraintsCopyWith<_$FixedElementConstraints> get copyWith =>
      __$$FixedElementConstraintsCopyWithImpl<_$FixedElementConstraints>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scale) scaled,
    required TResult Function(double height, double width) fixed,
    required TResult Function(
            double height, double width, double aspectRatio, bool includeArea)
        dynamic,
  }) {
    return fixed(height, width);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
  }) {
    return fixed?.call(height, width);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(height, width);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScaledElementConstraints value) scaled,
    required TResult Function(FixedElementConstraints value) fixed,
    required TResult Function(DynamicElementConstraints value) dynamic,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
  }) {
    return fixed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FixedElementConstraintsToJson(
      this,
    );
  }
}

abstract class FixedElementConstraints implements ElementConstraints {
  const factory FixedElementConstraints(
      final double height, final double width) = _$FixedElementConstraints;

  factory FixedElementConstraints.fromJson(Map<String, dynamic> json) =
      _$FixedElementConstraints.fromJson;

  double get height;
  double get width;
  @JsonKey(ignore: true)
  _$$FixedElementConstraintsCopyWith<_$FixedElementConstraints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DynamicElementConstraintsCopyWith<$Res> {
  factory _$$DynamicElementConstraintsCopyWith(
          _$DynamicElementConstraints value,
          $Res Function(_$DynamicElementConstraints) then) =
      __$$DynamicElementConstraintsCopyWithImpl<$Res>;
  $Res call(
      {double height, double width, double aspectRatio, bool includeArea});
}

/// @nodoc
class __$$DynamicElementConstraintsCopyWithImpl<$Res>
    extends _$ElementConstraintsCopyWithImpl<$Res>
    implements _$$DynamicElementConstraintsCopyWith<$Res> {
  __$$DynamicElementConstraintsCopyWithImpl(_$DynamicElementConstraints _value,
      $Res Function(_$DynamicElementConstraints) _then)
      : super(_value, (v) => _then(v as _$DynamicElementConstraints));

  @override
  _$DynamicElementConstraints get _value =>
      super._value as _$DynamicElementConstraints;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? aspectRatio = freezed,
    Object? includeArea = freezed,
  }) {
    return _then(_$DynamicElementConstraints(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      includeArea: includeArea == freezed
          ? _value.includeArea
          : includeArea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicElementConstraints implements DynamicElementConstraints {
  const _$DynamicElementConstraints(
      {this.height = 0,
      this.width = 0,
      this.aspectRatio = 0,
      this.includeArea = true,
      final String? $type})
      : $type = $type ?? 'dynamic';

  factory _$DynamicElementConstraints.fromJson(Map<String, dynamic> json) =>
      _$$DynamicElementConstraintsFromJson(json);

  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double aspectRatio;
  @override
  @JsonKey()
  final bool includeArea;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ElementConstraints.dynamic(height: $height, width: $width, aspectRatio: $aspectRatio, includeArea: $includeArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicElementConstraints &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality()
                .equals(other.aspectRatio, aspectRatio) &&
            const DeepCollectionEquality()
                .equals(other.includeArea, includeArea));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(aspectRatio),
      const DeepCollectionEquality().hash(includeArea));

  @JsonKey(ignore: true)
  @override
  _$$DynamicElementConstraintsCopyWith<_$DynamicElementConstraints>
      get copyWith => __$$DynamicElementConstraintsCopyWithImpl<
          _$DynamicElementConstraints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double scale) scaled,
    required TResult Function(double height, double width) fixed,
    required TResult Function(
            double height, double width, double aspectRatio, bool includeArea)
        dynamic,
  }) {
    return dynamic(height, width, aspectRatio, includeArea);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
  }) {
    return dynamic?.call(height, width, aspectRatio, includeArea);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double scale)? scaled,
    TResult Function(double height, double width)? fixed,
    TResult Function(
            double height, double width, double aspectRatio, bool includeArea)?
        dynamic,
    required TResult orElse(),
  }) {
    if (dynamic != null) {
      return dynamic(height, width, aspectRatio, includeArea);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScaledElementConstraints value) scaled,
    required TResult Function(FixedElementConstraints value) fixed,
    required TResult Function(DynamicElementConstraints value) dynamic,
  }) {
    return dynamic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
  }) {
    return dynamic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScaledElementConstraints value)? scaled,
    TResult Function(FixedElementConstraints value)? fixed,
    TResult Function(DynamicElementConstraints value)? dynamic,
    required TResult orElse(),
  }) {
    if (dynamic != null) {
      return dynamic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicElementConstraintsToJson(
      this,
    );
  }
}

abstract class DynamicElementConstraints implements ElementConstraints {
  const factory DynamicElementConstraints(
      {final double height,
      final double width,
      final double aspectRatio,
      final bool includeArea}) = _$DynamicElementConstraints;

  factory DynamicElementConstraints.fromJson(Map<String, dynamic> json) =
      _$DynamicElementConstraints.fromJson;

  double get height;
  double get width;
  double get aspectRatio;
  bool get includeArea;
  @JsonKey(ignore: true)
  _$$DynamicElementConstraintsCopyWith<_$DynamicElementConstraints>
      get copyWith => throw _privateConstructorUsedError;
}

PadElement _$PadElementFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'pen':
      return PenElement.fromJson(json);
    case 'eraser':
      return EraserElement.fromJson(json);
    case 'label':
      return LabelElement.fromJson(json);
    case 'image':
      return ImageElement.fromJson(json);
    case 'svg':
      return SvgElement.fromJson(json);
    case 'shape':
      return ShapeElement.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'PadElement', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$PadElement {
  String get layer => throw _privateConstructorUsedError;
  double get rotation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PadElementCopyWith<PadElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PadElementCopyWith<$Res> {
  factory $PadElementCopyWith(
          PadElement value, $Res Function(PadElement) then) =
      _$PadElementCopyWithImpl<$Res>;
  $Res call({String layer, double rotation});
}

/// @nodoc
class _$PadElementCopyWithImpl<$Res> implements $PadElementCopyWith<$Res> {
  _$PadElementCopyWithImpl(this._value, this._then);

  final PadElement _value;
  // ignore: unused_field
  final $Res Function(PadElement) _then;

  @override
  $Res call({
    Object? layer = freezed,
    Object? rotation = freezed,
  }) {
    return _then(_value.copyWith(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$PenElementCopyWith<$Res>
    implements $PadElementCopyWith<$Res> {
  factory _$$PenElementCopyWith(
          _$PenElement value, $Res Function(_$PenElement) then) =
      __$$PenElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String layer,
      List<PathPoint> points,
      PenProperty property,
      double rotation});
}

/// @nodoc
class __$$PenElementCopyWithImpl<$Res> extends _$PadElementCopyWithImpl<$Res>
    implements _$$PenElementCopyWith<$Res> {
  __$$PenElementCopyWithImpl(
      _$PenElement _value, $Res Function(_$PenElement) _then)
      : super(_value, (v) => _then(v as _$PenElement));

  @override
  _$PenElement get _value => super._value as _$PenElement;

  @override
  $Res call({
    Object? layer = freezed,
    Object? points = freezed,
    Object? property = freezed,
    Object? rotation = freezed,
  }) {
    return _then(_$PenElement(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PathPoint>,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PenProperty,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PenElement implements PenElement {
  const _$PenElement(
      {this.layer = '',
      final List<PathPoint> points = const [],
      this.property = const PenProperty(),
      this.rotation = 0,
      final String? $type})
      : _points = points,
        $type = $type ?? 'pen';

  factory _$PenElement.fromJson(Map<String, dynamic> json) =>
      _$$PenElementFromJson(json);

  @override
  @JsonKey()
  final String layer;
  final List<PathPoint> _points;
  @override
  @JsonKey()
  List<PathPoint> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final PenProperty property;
  @override
  @JsonKey()
  final double rotation;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PadElement.pen(layer: $layer, points: $points, property: $property, rotation: $rotation)';
  }

  @JsonKey(ignore: true)
  @override
  _$$PenElementCopyWith<_$PenElement> get copyWith =>
      __$$PenElementCopyWithImpl<_$PenElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) {
    return pen(layer, points, property, rotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) {
    return pen?.call(layer, points, property, rotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) {
    if (pen != null) {
      return pen(layer, points, property, rotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) {
    return pen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) {
    return pen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) {
    if (pen != null) {
      return pen(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PenElementToJson(
      this,
    );
  }
}

abstract class PenElement implements PadElement, PathElement {
  const factory PenElement(
      {final String layer,
      final List<PathPoint> points,
      final PenProperty property,
      final double rotation}) = _$PenElement;

  factory PenElement.fromJson(Map<String, dynamic> json) =
      _$PenElement.fromJson;

  @override
  String get layer;
  List<PathPoint> get points;
  PenProperty get property;
  @override
  double get rotation;
  @override
  @JsonKey(ignore: true)
  _$$PenElementCopyWith<_$PenElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EraserElementCopyWith<$Res>
    implements $PadElementCopyWith<$Res> {
  factory _$$EraserElementCopyWith(
          _$EraserElement value, $Res Function(_$EraserElement) then) =
      __$$EraserElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String layer,
      List<PathPoint> points,
      EraserProperty property,
      double rotation});
}

/// @nodoc
class __$$EraserElementCopyWithImpl<$Res> extends _$PadElementCopyWithImpl<$Res>
    implements _$$EraserElementCopyWith<$Res> {
  __$$EraserElementCopyWithImpl(
      _$EraserElement _value, $Res Function(_$EraserElement) _then)
      : super(_value, (v) => _then(v as _$EraserElement));

  @override
  _$EraserElement get _value => super._value as _$EraserElement;

  @override
  $Res call({
    Object? layer = freezed,
    Object? points = freezed,
    Object? property = freezed,
    Object? rotation = freezed,
  }) {
    return _then(_$EraserElement(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PathPoint>,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as EraserProperty,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EraserElement implements EraserElement {
  const _$EraserElement(
      {this.layer = '',
      final List<PathPoint> points = const [],
      this.property = const EraserProperty(),
      this.rotation = 0,
      final String? $type})
      : _points = points,
        $type = $type ?? 'eraser';

  factory _$EraserElement.fromJson(Map<String, dynamic> json) =>
      _$$EraserElementFromJson(json);

  @override
  @JsonKey()
  final String layer;
  final List<PathPoint> _points;
  @override
  @JsonKey()
  List<PathPoint> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final EraserProperty property;
  @override
  @JsonKey()
  final double rotation;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PadElement.eraser(layer: $layer, points: $points, property: $property, rotation: $rotation)';
  }

  @JsonKey(ignore: true)
  @override
  _$$EraserElementCopyWith<_$EraserElement> get copyWith =>
      __$$EraserElementCopyWithImpl<_$EraserElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) {
    return eraser(layer, points, property, rotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) {
    return eraser?.call(layer, points, property, rotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) {
    if (eraser != null) {
      return eraser(layer, points, property, rotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) {
    return eraser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) {
    return eraser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) {
    if (eraser != null) {
      return eraser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EraserElementToJson(
      this,
    );
  }
}

abstract class EraserElement implements PadElement, PathElement {
  const factory EraserElement(
      {final String layer,
      final List<PathPoint> points,
      final EraserProperty property,
      final double rotation}) = _$EraserElement;

  factory EraserElement.fromJson(Map<String, dynamic> json) =
      _$EraserElement.fromJson;

  @override
  String get layer;
  List<PathPoint> get points;
  EraserProperty get property;
  @override
  double get rotation;
  @override
  @JsonKey(ignore: true)
  _$$EraserElementCopyWith<_$EraserElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LabelElementCopyWith<$Res>
    implements $PadElementCopyWith<$Res> {
  factory _$$LabelElementCopyWith(
          _$LabelElement value, $Res Function(_$LabelElement) then) =
      __$$LabelElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String layer,
      @OffsetJsonConverter() Offset position,
      String text,
      LabelProperty property,
      ElementConstraint constraint,
      double rotation});

  $ElementConstraintCopyWith<$Res> get constraint;
}

/// @nodoc
class __$$LabelElementCopyWithImpl<$Res> extends _$PadElementCopyWithImpl<$Res>
    implements _$$LabelElementCopyWith<$Res> {
  __$$LabelElementCopyWithImpl(
      _$LabelElement _value, $Res Function(_$LabelElement) _then)
      : super(_value, (v) => _then(v as _$LabelElement));

  @override
  _$LabelElement get _value => super._value as _$LabelElement;

  @override
  $Res call({
    Object? layer = freezed,
    Object? position = freezed,
    Object? text = freezed,
    Object? property = freezed,
    Object? constraint = freezed,
    Object? rotation = freezed,
  }) {
    return _then(_$LabelElement(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as LabelProperty,
      constraint: constraint == freezed
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as ElementConstraint,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ElementConstraintCopyWith<$Res> get constraint {
    return $ElementConstraintCopyWith<$Res>(_value.constraint, (value) {
      return _then(_value.copyWith(constraint: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelElement implements LabelElement {
  const _$LabelElement(
      {this.layer = '',
      @OffsetJsonConverter() this.position = Offset.zero,
      this.text = '',
      this.property = const LabelProperty(),
      this.constraint = const ElementConstraint(size: 1000),
      this.rotation = 0,
      final String? $type})
      : $type = $type ?? 'label';

  factory _$LabelElement.fromJson(Map<String, dynamic> json) =>
      _$$LabelElementFromJson(json);

  @override
  @JsonKey()
  final String layer;
  @override
  @JsonKey()
  @OffsetJsonConverter()
  final Offset position;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final LabelProperty property;
  @override
  @JsonKey()
  final ElementConstraint constraint;
  @override
  @JsonKey()
  final double rotation;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PadElement.label(layer: $layer, position: $position, text: $text, property: $property, constraint: $constraint, rotation: $rotation)';
  }

  @JsonKey(ignore: true)
  @override
  _$$LabelElementCopyWith<_$LabelElement> get copyWith =>
      __$$LabelElementCopyWithImpl<_$LabelElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) {
    return label(layer, position, text, property, constraint, rotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) {
    return label?.call(layer, position, text, property, constraint, rotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(layer, position, text, property, constraint, rotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) {
    return label(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) {
    return label?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelElementToJson(
      this,
    );
  }
}

abstract class LabelElement implements PadElement {
  const factory LabelElement(
      {final String layer,
      @OffsetJsonConverter() final Offset position,
      final String text,
      final LabelProperty property,
      final ElementConstraint constraint,
      final double rotation}) = _$LabelElement;

  factory LabelElement.fromJson(Map<String, dynamic> json) =
      _$LabelElement.fromJson;

  @override
  String get layer;
  @OffsetJsonConverter()
  Offset get position;
  String get text;
  LabelProperty get property;
  ElementConstraint get constraint;
  @override
  double get rotation;
  @override
  @JsonKey(ignore: true)
  _$$LabelElementCopyWith<_$LabelElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageElementCopyWith<$Res>
    implements $PadElementCopyWith<$Res> {
  factory _$$ImageElementCopyWith(
          _$ImageElement value, $Res Function(_$ImageElement) then) =
      __$$ImageElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String layer,
      @OffsetJsonConverter() Offset position,
      ElementConstraints? constraints,
      @Uint8ListJsonConverter() Uint8List pixels,
      double rotation,
      int width,
      int height});

  $ElementConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$$ImageElementCopyWithImpl<$Res> extends _$PadElementCopyWithImpl<$Res>
    implements _$$ImageElementCopyWith<$Res> {
  __$$ImageElementCopyWithImpl(
      _$ImageElement _value, $Res Function(_$ImageElement) _then)
      : super(_value, (v) => _then(v as _$ImageElement));

  @override
  _$ImageElement get _value => super._value as _$ImageElement;

  @override
  $Res call({
    Object? layer = freezed,
    Object? position = freezed,
    Object? constraints = freezed,
    Object? pixels = freezed,
    Object? rotation = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$ImageElement(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      constraints: constraints == freezed
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as ElementConstraints?,
      pixels: pixels == freezed
          ? _value.pixels
          : pixels // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ElementConstraintsCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $ElementConstraintsCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageElement implements ImageElement {
  const _$ImageElement(
      {this.layer = '',
      @OffsetJsonConverter() this.position = Offset.zero,
      this.constraints = const ScaledElementConstraints(1),
      @Uint8ListJsonConverter() required this.pixels,
      this.rotation = 0,
      required this.width,
      required this.height,
      final String? $type})
      : $type = $type ?? 'image';

  factory _$ImageElement.fromJson(Map<String, dynamic> json) =>
      _$$ImageElementFromJson(json);

  @override
  @JsonKey()
  final String layer;
  @override
  @JsonKey()
  @OffsetJsonConverter()
  final Offset position;
  @override
  @JsonKey()
  final ElementConstraints? constraints;
  @override
  @Uint8ListJsonConverter()
  final Uint8List pixels;
  @override
  @JsonKey()
  final double rotation;
  @override
  final int width;
  @override
  final int height;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PadElement.image(layer: $layer, position: $position, constraints: $constraints, pixels: $pixels, rotation: $rotation, width: $width, height: $height)';
  }

  @JsonKey(ignore: true)
  @override
  _$$ImageElementCopyWith<_$ImageElement> get copyWith =>
      __$$ImageElementCopyWithImpl<_$ImageElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) {
    return image(layer, position, constraints, pixels, rotation, width, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) {
    return image?.call(
        layer, position, constraints, pixels, rotation, width, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(
          layer, position, constraints, pixels, rotation, width, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageElementToJson(
      this,
    );
  }
}

abstract class ImageElement implements PadElement {
  const factory ImageElement(
      {final String layer,
      @OffsetJsonConverter() final Offset position,
      final ElementConstraints? constraints,
      @Uint8ListJsonConverter() required final Uint8List pixels,
      final double rotation,
      required final int width,
      required final int height}) = _$ImageElement;

  factory ImageElement.fromJson(Map<String, dynamic> json) =
      _$ImageElement.fromJson;

  @override
  String get layer;
  @OffsetJsonConverter()
  Offset get position;
  ElementConstraints? get constraints;
  @Uint8ListJsonConverter()
  Uint8List get pixels;
  @override
  double get rotation;
  int get width;
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$ImageElementCopyWith<_$ImageElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SvgElementCopyWith<$Res>
    implements $PadElementCopyWith<$Res> {
  factory _$$SvgElementCopyWith(
          _$SvgElement value, $Res Function(_$SvgElement) then) =
      __$$SvgElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String layer,
      @OffsetJsonConverter() Offset position,
      ElementConstraints? constraints,
      double rotation,
      String data,
      double width,
      double height});

  $ElementConstraintsCopyWith<$Res>? get constraints;
}

/// @nodoc
class __$$SvgElementCopyWithImpl<$Res> extends _$PadElementCopyWithImpl<$Res>
    implements _$$SvgElementCopyWith<$Res> {
  __$$SvgElementCopyWithImpl(
      _$SvgElement _value, $Res Function(_$SvgElement) _then)
      : super(_value, (v) => _then(v as _$SvgElement));

  @override
  _$SvgElement get _value => super._value as _$SvgElement;

  @override
  $Res call({
    Object? layer = freezed,
    Object? position = freezed,
    Object? constraints = freezed,
    Object? rotation = freezed,
    Object? data = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$SvgElement(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      constraints: constraints == freezed
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as ElementConstraints?,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ElementConstraintsCopyWith<$Res>? get constraints {
    if (_value.constraints == null) {
      return null;
    }

    return $ElementConstraintsCopyWith<$Res>(_value.constraints!, (value) {
      return _then(_value.copyWith(constraints: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SvgElement implements SvgElement {
  const _$SvgElement(
      {this.layer = '',
      @OffsetJsonConverter() this.position = Offset.zero,
      this.constraints = const ScaledElementConstraints(1),
      this.rotation = 0,
      required this.data,
      required this.width,
      required this.height,
      final String? $type})
      : $type = $type ?? 'svg';

  factory _$SvgElement.fromJson(Map<String, dynamic> json) =>
      _$$SvgElementFromJson(json);

  @override
  @JsonKey()
  final String layer;
  @override
  @JsonKey()
  @OffsetJsonConverter()
  final Offset position;
  @override
  @JsonKey()
  final ElementConstraints? constraints;
  @override
  @JsonKey()
  final double rotation;
  @override
  final String data;
  @override
  final double width;
  @override
  final double height;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PadElement.svg(layer: $layer, position: $position, constraints: $constraints, rotation: $rotation, data: $data, width: $width, height: $height)';
  }

  @JsonKey(ignore: true)
  @override
  _$$SvgElementCopyWith<_$SvgElement> get copyWith =>
      __$$SvgElementCopyWithImpl<_$SvgElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) {
    return svg(layer, position, constraints, rotation, data, width, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) {
    return svg?.call(
        layer, position, constraints, rotation, data, width, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) {
    if (svg != null) {
      return svg(layer, position, constraints, rotation, data, width, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) {
    return svg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) {
    return svg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) {
    if (svg != null) {
      return svg(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SvgElementToJson(
      this,
    );
  }
}

abstract class SvgElement implements PadElement {
  const factory SvgElement(
      {final String layer,
      @OffsetJsonConverter() final Offset position,
      final ElementConstraints? constraints,
      final double rotation,
      required final String data,
      required final double width,
      required final double height}) = _$SvgElement;

  factory SvgElement.fromJson(Map<String, dynamic> json) =
      _$SvgElement.fromJson;

  @override
  String get layer;
  @OffsetJsonConverter()
  Offset get position;
  ElementConstraints? get constraints;
  @override
  double get rotation;
  String get data;
  double get width;
  double get height;
  @override
  @JsonKey(ignore: true)
  _$$SvgElementCopyWith<_$SvgElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShapeElementCopyWith<$Res>
    implements $PadElementCopyWith<$Res> {
  factory _$$ShapeElementCopyWith(
          _$ShapeElement value, $Res Function(_$ShapeElement) then) =
      __$$ShapeElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String layer,
      @OffsetJsonConverter() Offset firstPosition,
      @OffsetJsonConverter() Offset secondPosition,
      ShapeProperty property,
      double rotation});
}

/// @nodoc
class __$$ShapeElementCopyWithImpl<$Res> extends _$PadElementCopyWithImpl<$Res>
    implements _$$ShapeElementCopyWith<$Res> {
  __$$ShapeElementCopyWithImpl(
      _$ShapeElement _value, $Res Function(_$ShapeElement) _then)
      : super(_value, (v) => _then(v as _$ShapeElement));

  @override
  _$ShapeElement get _value => super._value as _$ShapeElement;

  @override
  $Res call({
    Object? layer = freezed,
    Object? firstPosition = freezed,
    Object? secondPosition = freezed,
    Object? property = freezed,
    Object? rotation = freezed,
  }) {
    return _then(_$ShapeElement(
      layer: layer == freezed
          ? _value.layer
          : layer // ignore: cast_nullable_to_non_nullable
              as String,
      firstPosition: firstPosition == freezed
          ? _value.firstPosition
          : firstPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      secondPosition: secondPosition == freezed
          ? _value.secondPosition
          : secondPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as ShapeProperty,
      rotation: rotation == freezed
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShapeElement implements ShapeElement {
  const _$ShapeElement(
      {this.layer = '',
      @OffsetJsonConverter() this.firstPosition = Offset.zero,
      @OffsetJsonConverter() this.secondPosition = Offset.zero,
      this.property = const ShapeProperty(shape: RectangleShape()),
      this.rotation = 0,
      final String? $type})
      : $type = $type ?? 'shape';

  factory _$ShapeElement.fromJson(Map<String, dynamic> json) =>
      _$$ShapeElementFromJson(json);

  @override
  @JsonKey()
  final String layer;
  @override
  @JsonKey()
  @OffsetJsonConverter()
  final Offset firstPosition;
  @override
  @JsonKey()
  @OffsetJsonConverter()
  final Offset secondPosition;
  @override
  @JsonKey()
  final ShapeProperty property;
  @override
  @JsonKey()
  final double rotation;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PadElement.shape(layer: $layer, firstPosition: $firstPosition, secondPosition: $secondPosition, property: $property, rotation: $rotation)';
  }

  @JsonKey(ignore: true)
  @override
  _$$ShapeElementCopyWith<_$ShapeElement> get copyWith =>
      __$$ShapeElementCopyWithImpl<_$ShapeElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String layer, List<PathPoint> points,
            PenProperty property, double rotation)
        pen,
    required TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)
        eraser,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)
        label,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)
        image,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)
        svg,
    required TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)
        shape,
  }) {
    return shape(layer, firstPosition, secondPosition, property, rotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
  }) {
    return shape?.call(
        layer, firstPosition, secondPosition, property, rotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String layer, List<PathPoint> points, PenProperty property,
            double rotation)?
        pen,
    TResult Function(String layer, List<PathPoint> points,
            EraserProperty property, double rotation)?
        eraser,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            String text,
            LabelProperty property,
            ElementConstraint constraint,
            double rotation)?
        label,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            @Uint8ListJsonConverter() Uint8List pixels,
            double rotation,
            int width,
            int height)?
        image,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset position,
            ElementConstraints? constraints,
            double rotation,
            String data,
            double width,
            double height)?
        svg,
    TResult Function(
            String layer,
            @OffsetJsonConverter() Offset firstPosition,
            @OffsetJsonConverter() Offset secondPosition,
            ShapeProperty property,
            double rotation)?
        shape,
    required TResult orElse(),
  }) {
    if (shape != null) {
      return shape(layer, firstPosition, secondPosition, property, rotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PenElement value) pen,
    required TResult Function(EraserElement value) eraser,
    required TResult Function(LabelElement value) label,
    required TResult Function(ImageElement value) image,
    required TResult Function(SvgElement value) svg,
    required TResult Function(ShapeElement value) shape,
  }) {
    return shape(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
  }) {
    return shape?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PenElement value)? pen,
    TResult Function(EraserElement value)? eraser,
    TResult Function(LabelElement value)? label,
    TResult Function(ImageElement value)? image,
    TResult Function(SvgElement value)? svg,
    TResult Function(ShapeElement value)? shape,
    required TResult orElse(),
  }) {
    if (shape != null) {
      return shape(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShapeElementToJson(
      this,
    );
  }
}

abstract class ShapeElement implements PadElement {
  const factory ShapeElement(
      {final String layer,
      @OffsetJsonConverter() final Offset firstPosition,
      @OffsetJsonConverter() final Offset secondPosition,
      final ShapeProperty property,
      final double rotation}) = _$ShapeElement;

  factory ShapeElement.fromJson(Map<String, dynamic> json) =
      _$ShapeElement.fromJson;

  @override
  String get layer;
  @OffsetJsonConverter()
  Offset get firstPosition;
  @OffsetJsonConverter()
  Offset get secondPosition;
  ShapeProperty get property;
  @override
  double get rotation;
  @override
  @JsonKey(ignore: true)
  _$$ShapeElementCopyWith<_$ShapeElement> get copyWith =>
      throw _privateConstructorUsedError;
}
