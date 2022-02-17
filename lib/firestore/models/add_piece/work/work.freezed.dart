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
      required WorkNumber opusNo,
      List<Piece> pieces = const [],
      required List<Instrument> instruments,
      String? id}) {
    return _Work(
      name: name,
      opusNo: opusNo,
      pieces: pieces,
      instruments: instruments,
      id: id,
    );
  }
}

/// @nodoc
const $Work = _$WorkTearOff();

/// @nodoc
mixin _$Work {
  String get name => throw _privateConstructorUsedError;
  WorkNumber get opusNo => throw _privateConstructorUsedError;

  /// All the pieces that the work consists of
  List<Piece> get pieces => throw _privateConstructorUsedError;

  /// The instruments for which the work is written.
  List<Instrument> get instruments => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
  $Res call(
      {String name,
      WorkNumber opusNo,
      List<Piece> pieces,
      List<Instrument> instruments,
      String? id});
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
    Object? instruments = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      opusNo: opusNo == freezed
          ? _value.opusNo
          : opusNo // ignore: cast_nullable_to_non_nullable
              as WorkNumber,
      pieces: pieces == freezed
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
      instruments: instruments == freezed
          ? _value.instruments
          : instruments // ignore: cast_nullable_to_non_nullable
              as List<Instrument>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) then) =
      __$WorkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      WorkNumber opusNo,
      List<Piece> pieces,
      List<Instrument> instruments,
      String? id});
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
    Object? instruments = freezed,
    Object? id = freezed,
  }) {
    return _then(_Work(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      opusNo: opusNo == freezed
          ? _value.opusNo
          : opusNo // ignore: cast_nullable_to_non_nullable
              as WorkNumber,
      pieces: pieces == freezed
          ? _value.pieces
          : pieces // ignore: cast_nullable_to_non_nullable
              as List<Piece>,
      instruments: instruments == freezed
          ? _value.instruments
          : instruments // ignore: cast_nullable_to_non_nullable
              as List<Instrument>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Work implements _Work {
  const _$_Work(
      {required this.name,
      required this.opusNo,
      this.pieces = const [],
      required this.instruments,
      this.id});

  @override
  final String name;
  @override
  final WorkNumber opusNo;
  @JsonKey()
  @override

  /// All the pieces that the work consists of
  final List<Piece> pieces;
  @override

  /// The instruments for which the work is written.
  final List<Instrument> instruments;
  @override
  final String? id;

  @override
  String toString() {
    return 'Work(name: $name, opusNo: $opusNo, pieces: $pieces, instruments: $instruments, id: $id)';
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
                .equals(other.instruments, instruments) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(opusNo),
      const DeepCollectionEquality().hash(pieces),
      const DeepCollectionEquality().hash(instruments),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);
}

abstract class _Work implements Work {
  const factory _Work(
      {required String name,
      required WorkNumber opusNo,
      List<Piece> pieces,
      required List<Instrument> instruments,
      String? id}) = _$_Work;

  @override
  String get name;
  @override
  WorkNumber get opusNo;
  @override

  /// All the pieces that the work consists of
  List<Piece> get pieces;
  @override

  /// The instruments for which the work is written.
  List<Instrument> get instruments;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$WorkCopyWith<_Work> get copyWith => throw _privateConstructorUsedError;
}
