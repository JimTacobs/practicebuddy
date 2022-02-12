// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkTearOff {
  const _$WorkTearOff();

  _Work call(
      {required String name,
      int? opusNo,
      required List<Piece> pieces,
      required Instrument instrument}) {
    return _Work(
      name: name,
      opusNo: opusNo,
      pieces: pieces,
      instrument: instrument,
    );
  }
}

/// @nodoc
const $Work = _$WorkTearOff();

/// @nodoc
mixin _$Work {
  String get name => throw _privateConstructorUsedError;
  int? get opusNo => throw _privateConstructorUsedError;

  /// All the pieces that the work consists of
  List<Piece> get pieces => throw _privateConstructorUsedError;

  /// The instrument for which the work is written.
  Instrument get instrument => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
  $Res call(
      {String name, int? opusNo, List<Piece> pieces, Instrument instrument});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  final Work _value;
  // ignore: unused_field
  final $Res Function(Work) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? opusNo = freezed,
    Object? pieces = freezed,
    Object? instrument = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      opusNo: opusNo == freezed
          ? _value.opusNo
          : opusNo // ignore: cast_nullable_to_non_nullable
              as int?,
      pieces: pieces == freezed
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
      instrument: instrument == freezed
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as Instrument,
    ));
  }
}

/// @nodoc
abstract class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) then) =
      __$WorkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, int? opusNo, List<Piece> pieces, Instrument instrument});
}

/// @nodoc
class __$WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(_Work _value, $Res Function(_Work) _then)
      : super(_value, (v) => _then(v as _Work));

  @override
  _Work get _value => super._value as _Work;

  @override
  $Res call({
    Object? name = freezed,
    Object? opusNo = freezed,
    Object? pieces = freezed,
    Object? instrument = freezed,
  }) {
    return _then(_Work(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      opusNo: opusNo == freezed
          ? _value.opusNo
          : opusNo // ignore: cast_nullable_to_non_nullable
              as int?,
      pieces: pieces == freezed
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
      instrument: instrument == freezed
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as Instrument,
    ));
  }
}

/// @nodoc

class _$_Work implements _Work {
  const _$_Work(
      {required this.name,
      this.opusNo,
      required this.pieces,
      required this.instrument});

  @override
  final String name;
  @override
  final int? opusNo;
  @override

  /// All the pieces that the work consists of
  final List<Piece> pieces;
  @override

  /// The instrument for which the work is written.
  final Instrument instrument;

  @override
  String toString() {
    return 'Work(name: $name, opusNo: $opusNo, pieces: $pieces, instrument: $instrument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Work &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.opusNo, opusNo) &&
            const DeepCollectionEquality().equals(other.pieces, pieces) &&
            const DeepCollectionEquality()
                .equals(other.instrument, instrument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(opusNo),
      const DeepCollectionEquality().hash(pieces),
      const DeepCollectionEquality().hash(instrument));

  @JsonKey(ignore: true)
  @override
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);
}

abstract class _Work implements Work {
  const factory _Work(
      {required String name,
      int? opusNo,
      required List<Piece> pieces,
      required Instrument instrument}) = _$_Work;

  @override
  String get name;
  @override
  int? get opusNo;
  @override

  /// All the pieces that the work consists of
  List<Piece> get pieces;
  @override

  /// The instrument for which the work is written.
  Instrument get instrument;
  @override
  @JsonKey(ignore: true)
  _$WorkCopyWith<_Work> get copyWith => throw _privateConstructorUsedError;
}
