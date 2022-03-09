// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkNumber _$WorkNumberFromJson(Map<String, dynamic> json) {
  return _WorkNumber.fromJson(json);
}

/// @nodoc
class _$WorkNumberTearOff {
  const _$WorkNumberTearOff();

  _WorkNumber call({required String numberingSystem, required int number}) {
    return _WorkNumber(
      numberingSystem: numberingSystem,
      number: number,
    );
  }

  WorkNumber fromJson(Map<String, Object?> json) {
    return WorkNumber.fromJson(json);
  }
}

/// @nodoc
const $WorkNumber = _$WorkNumberTearOff();

/// @nodoc
mixin _$WorkNumber {
  String get numberingSystem => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkNumberCopyWith<WorkNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkNumberCopyWith<$Res> {
  factory $WorkNumberCopyWith(
          WorkNumber value, $Res Function(WorkNumber) then) =
      _$WorkNumberCopyWithImpl<$Res>;
  $Res call({String numberingSystem, int number});
}

/// @nodoc
class _$WorkNumberCopyWithImpl<$Res> implements $WorkNumberCopyWith<$Res> {
  _$WorkNumberCopyWithImpl(this._value, this._then);

  final WorkNumber _value;
  // ignore: unused_field
  final $Res Function(WorkNumber) _then;

  @override
  $Res call({
    Object? numberingSystem = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      numberingSystem: numberingSystem == freezed
          ? _value.numberingSystem
          : numberingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WorkNumberCopyWith<$Res> implements $WorkNumberCopyWith<$Res> {
  factory _$WorkNumberCopyWith(
          _WorkNumber value, $Res Function(_WorkNumber) then) =
      __$WorkNumberCopyWithImpl<$Res>;
  @override
  $Res call({String numberingSystem, int number});
}

/// @nodoc
class __$WorkNumberCopyWithImpl<$Res> extends _$WorkNumberCopyWithImpl<$Res>
    implements _$WorkNumberCopyWith<$Res> {
  __$WorkNumberCopyWithImpl(
      _WorkNumber _value, $Res Function(_WorkNumber) _then)
      : super(_value, (v) => _then(v as _WorkNumber));

  @override
  _WorkNumber get _value => super._value as _WorkNumber;

  @override
  $Res call({
    Object? numberingSystem = freezed,
    Object? number = freezed,
  }) {
    return _then(_WorkNumber(
      numberingSystem: numberingSystem == freezed
          ? _value.numberingSystem
          : numberingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkNumber implements _WorkNumber {
  const _$_WorkNumber({required this.numberingSystem, required this.number});

  factory _$_WorkNumber.fromJson(Map<String, dynamic> json) =>
      _$$_WorkNumberFromJson(json);

  @override
  final String numberingSystem;
  @override
  final int number;

  @override
  String toString() {
    return 'WorkNumber(numberingSystem: $numberingSystem, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkNumber &&
            const DeepCollectionEquality()
                .equals(other.numberingSystem, numberingSystem) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numberingSystem),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$WorkNumberCopyWith<_WorkNumber> get copyWith =>
      __$WorkNumberCopyWithImpl<_WorkNumber>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkNumberToJson(this);
  }
}

abstract class _WorkNumber implements WorkNumber {
  const factory _WorkNumber(
      {required String numberingSystem, required int number}) = _$_WorkNumber;

  factory _WorkNumber.fromJson(Map<String, dynamic> json) =
      _$_WorkNumber.fromJson;

  @override
  String get numberingSystem;
  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$WorkNumberCopyWith<_WorkNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
