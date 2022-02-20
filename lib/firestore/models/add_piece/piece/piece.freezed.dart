// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'piece.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PieceTearOff {
  const _$PieceTearOff();

  _Piece call(
      {required int length,
      required int number,
      required String name,
      required int requiredTempo,
      String? id,
      List<Repetition> repetitions = const []}) {
    return _Piece(
      length: length,
      number: number,
      name: name,
      requiredTempo: requiredTempo,
      id: id,
      repetitions: repetitions,
    );
  }
}

/// @nodoc
const $Piece = _$PieceTearOff();

/// @nodoc
mixin _$Piece {
  int get length => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get requiredTempo => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Repetition> get repetitions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceCopyWith<Piece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res>;
  $Res call(
      {int length,
      int number,
      String name,
      int requiredTempo,
      String? id,
      List<Repetition> repetitions});
}

/// @nodoc
class _$PieceCopyWithImpl<$Res> implements $PieceCopyWith<$Res> {
  _$PieceCopyWithImpl(this._value, this._then);

  final Piece _value;
  // ignore: unused_field
  final $Res Function(Piece) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? number = freezed,
    Object? name = freezed,
    Object? requiredTempo = freezed,
    Object? id = freezed,
    Object? repetitions = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      requiredTempo: requiredTempo == freezed
          ? _value.requiredTempo
          : requiredTempo // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as List<Repetition>,
    ));
  }
}

/// @nodoc
abstract class _$PieceCopyWith<$Res> implements $PieceCopyWith<$Res> {
  factory _$PieceCopyWith(_Piece value, $Res Function(_Piece) then) =
      __$PieceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int length,
      int number,
      String name,
      int requiredTempo,
      String? id,
      List<Repetition> repetitions});
}

/// @nodoc
class __$PieceCopyWithImpl<$Res> extends _$PieceCopyWithImpl<$Res>
    implements _$PieceCopyWith<$Res> {
  __$PieceCopyWithImpl(_Piece _value, $Res Function(_Piece) _then)
      : super(_value, (v) => _then(v as _Piece));

  @override
  _Piece get _value => super._value as _Piece;

  @override
  $Res call({
    Object? length = freezed,
    Object? number = freezed,
    Object? name = freezed,
    Object? requiredTempo = freezed,
    Object? id = freezed,
    Object? repetitions = freezed,
  }) {
    return _then(_Piece(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      requiredTempo: requiredTempo == freezed
          ? _value.requiredTempo
          : requiredTempo // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repetitions: repetitions == freezed
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as List<Repetition>,
    ));
  }
}

/// @nodoc

class _$_Piece implements _Piece {
  const _$_Piece(
      {required this.length,
      required this.number,
      required this.name,
      required this.requiredTempo,
      this.id,
      this.repetitions = const []});

  @override
  final int length;
  @override
  final int number;
  @override
  final String name;
  @override
  final int requiredTempo;
  @override
  final String? id;
  @JsonKey()
  @override
  final List<Repetition> repetitions;

  @override
  String toString() {
    return 'Piece(length: $length, number: $number, name: $name, requiredTempo: $requiredTempo, id: $id, repetitions: $repetitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Piece &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.requiredTempo, requiredTempo) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.repetitions, repetitions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(requiredTempo),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(repetitions));

  @JsonKey(ignore: true)
  @override
  _$PieceCopyWith<_Piece> get copyWith =>
      __$PieceCopyWithImpl<_Piece>(this, _$identity);
}

abstract class _Piece implements Piece {
  const factory _Piece(
      {required int length,
      required int number,
      required String name,
      required int requiredTempo,
      String? id,
      List<Repetition> repetitions}) = _$_Piece;

  @override
  int get length;
  @override
  int get number;
  @override
  String get name;
  @override
  int get requiredTempo;
  @override
  String? get id;
  @override
  List<Repetition> get repetitions;
  @override
  @JsonKey(ignore: true)
  _$PieceCopyWith<_Piece> get copyWith => throw _privateConstructorUsedError;
}
