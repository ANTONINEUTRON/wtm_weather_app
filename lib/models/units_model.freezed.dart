// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'units_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitsModel _$UnitsModelFromJson(Map<String, dynamic> json) {
  return _UnitsModel.fromJson(json);
}

/// @nodoc
mixin _$UnitsModel {
  String get temperature_2m => throw _privateConstructorUsedError;
  String get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitsModelCopyWith<UnitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitsModelCopyWith<$Res> {
  factory $UnitsModelCopyWith(
          UnitsModel value, $Res Function(UnitsModel) then) =
      _$UnitsModelCopyWithImpl<$Res, UnitsModel>;
  @useResult
  $Res call({String temperature_2m, String rain});
}

/// @nodoc
class _$UnitsModelCopyWithImpl<$Res, $Val extends UnitsModel>
    implements $UnitsModelCopyWith<$Res> {
  _$UnitsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature_2m = null,
    Object? rain = null,
  }) {
    return _then(_value.copyWith(
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as String,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitsModelImplCopyWith<$Res>
    implements $UnitsModelCopyWith<$Res> {
  factory _$$UnitsModelImplCopyWith(
          _$UnitsModelImpl value, $Res Function(_$UnitsModelImpl) then) =
      __$$UnitsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String temperature_2m, String rain});
}

/// @nodoc
class __$$UnitsModelImplCopyWithImpl<$Res>
    extends _$UnitsModelCopyWithImpl<$Res, _$UnitsModelImpl>
    implements _$$UnitsModelImplCopyWith<$Res> {
  __$$UnitsModelImplCopyWithImpl(
      _$UnitsModelImpl _value, $Res Function(_$UnitsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature_2m = null,
    Object? rain = null,
  }) {
    return _then(_$UnitsModelImpl(
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as String,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitsModelImpl implements _UnitsModel {
  _$UnitsModelImpl({required this.temperature_2m, required this.rain});

  factory _$UnitsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitsModelImplFromJson(json);

  @override
  final String temperature_2m;
  @override
  final String rain;

  @override
  String toString() {
    return 'UnitsModel(temperature_2m: $temperature_2m, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitsModelImpl &&
            (identical(other.temperature_2m, temperature_2m) ||
                other.temperature_2m == temperature_2m) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature_2m, rain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitsModelImplCopyWith<_$UnitsModelImpl> get copyWith =>
      __$$UnitsModelImplCopyWithImpl<_$UnitsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitsModelImplToJson(
      this,
    );
  }
}

abstract class _UnitsModel implements UnitsModel {
  factory _UnitsModel(
      {required final String temperature_2m,
      required final String rain}) = _$UnitsModelImpl;

  factory _UnitsModel.fromJson(Map<String, dynamic> json) =
      _$UnitsModelImpl.fromJson;

  @override
  String get temperature_2m;
  @override
  String get rain;
  @override
  @JsonKey(ignore: true)
  _$$UnitsModelImplCopyWith<_$UnitsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
