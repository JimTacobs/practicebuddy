// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'composer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Composer _$ComposerFromJson(Map<String, dynamic> json) {
  return _Composer.fromJson(json);
}

/// @nodoc
class _$ComposerTearOff {
  const _$ComposerTearOff();

  _Composer call(
      {required String firstNames,
      required String lastName,
      @TimestampConverter() required DateTime dateOfBirth,
      @TimestampNullableConverter() required DateTime? dateOfDeath,
      @WorkListConverter() List<Work> works = const [],
      required String numberingSystem,
      String? id}) {
    return _Composer(
      firstNames: firstNames,
      lastName: lastName,
      dateOfBirth: dateOfBirth,
      dateOfDeath: dateOfDeath,
      works: works,
      numberingSystem: numberingSystem,
      id: id,
    );
  }

  Composer fromJson(Map<String, Object?> json) {
    return Composer.fromJson(json);
  }
}

/// @nodoc
const $Composer = _$ComposerTearOff();

/// @nodoc
mixin _$Composer {
  String get firstNames => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get dateOfDeath => throw _privateConstructorUsedError;
  @WorkListConverter()
  List<Work> get works => throw _privateConstructorUsedError;
  String get numberingSystem => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComposerCopyWith<Composer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerCopyWith<$Res> {
  factory $ComposerCopyWith(Composer value, $Res Function(Composer) then) =
      _$ComposerCopyWithImpl<$Res>;
  $Res call(
      {String firstNames,
      String lastName,
      @TimestampConverter() DateTime dateOfBirth,
      @TimestampNullableConverter() DateTime? dateOfDeath,
      @WorkListConverter() List<Work> works,
      String numberingSystem,
      String? id});
}

/// @nodoc
class _$ComposerCopyWithImpl<$Res> implements $ComposerCopyWith<$Res> {
  _$ComposerCopyWithImpl(this._value, this._then);

  final Composer _value;
  // ignore: unused_field
  final $Res Function(Composer) _then;

  @override
  $Res call({
    Object? firstNames = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? dateOfDeath = freezed,
    Object? works = freezed,
    Object? numberingSystem = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      firstNames: firstNames == freezed
          ? _value.firstNames
          : firstNames // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfDeath: dateOfDeath == freezed
          ? _value.dateOfDeath
          : dateOfDeath // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      numberingSystem: numberingSystem == freezed
          ? _value.numberingSystem
          : numberingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ComposerCopyWith<$Res> implements $ComposerCopyWith<$Res> {
  factory _$ComposerCopyWith(_Composer value, $Res Function(_Composer) then) =
      __$ComposerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstNames,
      String lastName,
      @TimestampConverter() DateTime dateOfBirth,
      @TimestampNullableConverter() DateTime? dateOfDeath,
      @WorkListConverter() List<Work> works,
      String numberingSystem,
      String? id});
}

/// @nodoc
class __$ComposerCopyWithImpl<$Res> extends _$ComposerCopyWithImpl<$Res>
    implements _$ComposerCopyWith<$Res> {
  __$ComposerCopyWithImpl(_Composer _value, $Res Function(_Composer) _then)
      : super(_value, (v) => _then(v as _Composer));

  @override
  _Composer get _value => super._value as _Composer;

  @override
  $Res call({
    Object? firstNames = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? dateOfDeath = freezed,
    Object? works = freezed,
    Object? numberingSystem = freezed,
    Object? id = freezed,
  }) {
    return _then(_Composer(
      firstNames: firstNames == freezed
          ? _value.firstNames
          : firstNames // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfDeath: dateOfDeath == freezed
          ? _value.dateOfDeath
          : dateOfDeath // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      numberingSystem: numberingSystem == freezed
          ? _value.numberingSystem
          : numberingSystem // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Composer implements _Composer {
  const _$_Composer(
      {required this.firstNames,
      required this.lastName,
      @TimestampConverter() required this.dateOfBirth,
      @TimestampNullableConverter() required this.dateOfDeath,
      @WorkListConverter() this.works = const [],
      required this.numberingSystem,
      this.id});

  factory _$_Composer.fromJson(Map<String, dynamic> json) =>
      _$$_ComposerFromJson(json);

  @override
  final String firstNames;
  @override
  final String lastName;
  @override
  @TimestampConverter()
  final DateTime dateOfBirth;
  @override
  @TimestampNullableConverter()
  final DateTime? dateOfDeath;
  @JsonKey()
  @override
  @WorkListConverter()
  final List<Work> works;
  @override
  final String numberingSystem;
  @override
  final String? id;

  @override
  String toString() {
    return 'Composer(firstNames: $firstNames, lastName: $lastName, dateOfBirth: $dateOfBirth, dateOfDeath: $dateOfDeath, works: $works, numberingSystem: $numberingSystem, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Composer &&
            const DeepCollectionEquality()
                .equals(other.firstNames, firstNames) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.dateOfDeath, dateOfDeath) &&
            const DeepCollectionEquality().equals(other.works, works) &&
            const DeepCollectionEquality()
                .equals(other.numberingSystem, numberingSystem) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstNames),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(dateOfDeath),
      const DeepCollectionEquality().hash(works),
      const DeepCollectionEquality().hash(numberingSystem),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ComposerCopyWith<_Composer> get copyWith =>
      __$ComposerCopyWithImpl<_Composer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComposerToJson(this);
  }
}

abstract class _Composer implements Composer {
  const factory _Composer(
      {required String firstNames,
      required String lastName,
      @TimestampConverter() required DateTime dateOfBirth,
      @TimestampNullableConverter() required DateTime? dateOfDeath,
      @WorkListConverter() List<Work> works,
      required String numberingSystem,
      String? id}) = _$_Composer;

  factory _Composer.fromJson(Map<String, dynamic> json) = _$_Composer.fromJson;

  @override
  String get firstNames;
  @override
  String get lastName;
  @override
  @TimestampConverter()
  DateTime get dateOfBirth;
  @override
  @TimestampNullableConverter()
  DateTime? get dateOfDeath;
  @override
  @WorkListConverter()
  List<Work> get works;
  @override
  String get numberingSystem;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$ComposerCopyWith<_Composer> get copyWith =>
      throw _privateConstructorUsedError;
}
