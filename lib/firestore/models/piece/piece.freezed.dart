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
      {required dynamic composer,
      required List<Measure> measures,
      required PieceStatus status}) {
    return _Piece(
      composer: composer,
      measures: measures,
      status: status,
    );
  }
}

/// @nodoc
const $Piece = _$PieceTearOff();

/// @nodoc
mixin _$Piece {
  /// Temporary, should be the Composer model.
  dynamic get composer => throw _privateConstructorUsedError;

  /// A list of all the measures that the piece consists of.
  List<Measure> get measures => throw _privateConstructorUsedError;

  /// The status of the piece, which indicates whether it is being practiced
  /// or not. If it's not being practiced, it indicates why not.
  PieceStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceCopyWith<Piece> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceCopyWith<$Res> {
  factory $PieceCopyWith(Piece value, $Res Function(Piece) then) =
      _$PieceCopyWithImpl<$Res>;
  $Res call({dynamic composer, List<Measure> measures, PieceStatus status});
}

/// @nodoc
class _$PieceCopyWithImpl<$Res> implements $PieceCopyWith<$Res> {
  _$PieceCopyWithImpl(this._value, this._then);

  final Piece _value;
  // ignore: unused_field
  final $Res Function(Piece) _then;

  @override
  $Res call({
    Object? composer = freezed,
    Object? measures = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      measures: measures == freezed
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PieceStatus,
    ));
  }
}

/// @nodoc
abstract class _$PieceCopyWith<$Res> implements $PieceCopyWith<$Res> {
  factory _$PieceCopyWith(_Piece value, $Res Function(_Piece) then) =
      __$PieceCopyWithImpl<$Res>;
  @override
  $Res call({dynamic composer, List<Measure> measures, PieceStatus status});
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
    Object? composer = freezed,
    Object? measures = freezed,
    Object? status = freezed,
  }) {
    return _then(_Piece(
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      measures: measures == freezed
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<Measure>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PieceStatus,
    ));
  }
}

/// @nodoc

class _$_Piece implements _Piece {
  const _$_Piece(
      {required this.composer, required this.measures, required this.status});

  @override

  /// Temporary, should be the Composer model.
  final dynamic composer;
  @override

  /// A list of all the measures that the piece consists of.
  final List<Measure> measures;
  @override

  /// The status of the piece, which indicates whether it is being practiced
  /// or not. If it's not being practiced, it indicates why not.
  final PieceStatus status;

  @override
  String toString() {
    return 'Piece(composer: $composer, measures: $measures, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Piece &&
            const DeepCollectionEquality().equals(other.composer, composer) &&
            const DeepCollectionEquality().equals(other.measures, measures) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(composer),
      const DeepCollectionEquality().hash(measures),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$PieceCopyWith<_Piece> get copyWith =>
      __$PieceCopyWithImpl<_Piece>(this, _$identity);
}

abstract class _Piece implements Piece {
  const factory _Piece(
      {required dynamic composer,
      required List<Measure> measures,
      required PieceStatus status}) = _$_Piece;

  @override

  /// Temporary, should be the Composer model.
  dynamic get composer;
  @override

  /// A list of all the measures that the piece consists of.
  List<Measure> get measures;
  @override

  /// The status of the piece, which indicates whether it is being practiced
  /// or not. If it's not being practiced, it indicates why not.
  PieceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$PieceCopyWith<_Piece> get copyWith => throw _privateConstructorUsedError;
}
