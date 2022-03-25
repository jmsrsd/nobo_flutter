// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
class _$AppModelTearOff {
  const _$AppModelTearOff();

  _AppModel call({bool darkMode = true}) {
    return _AppModel(
      darkMode: darkMode,
    );
  }

  AppModel fromJson(Map<String, Object?> json) {
    return AppModel.fromJson(json);
  }
}

/// @nodoc
const $AppModel = _$AppModelTearOff();

/// @nodoc
mixin _$AppModel {
  bool get darkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res>;
  $Res call({bool darkMode});
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res> implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  final AppModel _value;
  // ignore: unused_field
  final $Res Function(AppModel) _then;

  @override
  $Res call({
    Object? darkMode = freezed,
  }) {
    return _then(_value.copyWith(
      darkMode: darkMode == freezed
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppModelCopyWith<$Res> implements $AppModelCopyWith<$Res> {
  factory _$AppModelCopyWith(_AppModel value, $Res Function(_AppModel) then) =
      __$AppModelCopyWithImpl<$Res>;
  @override
  $Res call({bool darkMode});
}

/// @nodoc
class __$AppModelCopyWithImpl<$Res> extends _$AppModelCopyWithImpl<$Res>
    implements _$AppModelCopyWith<$Res> {
  __$AppModelCopyWithImpl(_AppModel _value, $Res Function(_AppModel) _then)
      : super(_value, (v) => _then(v as _AppModel));

  @override
  _AppModel get _value => super._value as _AppModel;

  @override
  $Res call({
    Object? darkMode = freezed,
  }) {
    return _then(_AppModel(
      darkMode: darkMode == freezed
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppModel with DiagnosticableTreeMixin implements _AppModel {
  _$_AppModel({this.darkMode = true});

  factory _$_AppModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppModelFromJson(json);

  @JsonKey()
  @override
  final bool darkMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppModel(darkMode: $darkMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppModel'))
      ..add(DiagnosticsProperty('darkMode', darkMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppModel &&
            const DeepCollectionEquality().equals(other.darkMode, darkMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(darkMode));

  @JsonKey(ignore: true)
  @override
  _$AppModelCopyWith<_AppModel> get copyWith =>
      __$AppModelCopyWithImpl<_AppModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppModelToJson(this);
  }
}

abstract class _AppModel implements AppModel {
  factory _AppModel({bool darkMode}) = _$_AppModel;

  factory _AppModel.fromJson(Map<String, dynamic> json) = _$_AppModel.fromJson;

  @override
  bool get darkMode;
  @override
  @JsonKey(ignore: true)
  _$AppModelCopyWith<_AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}
