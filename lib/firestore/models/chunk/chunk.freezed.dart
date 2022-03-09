// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chunk _$ChunkFromJson(Map<String, dynamic> json) {
  return _Chunk.fromJson(json);
}

/// @nodoc
class _$ChunkTearOff {
  const _$ChunkTearOff();

  _Chunk call(
      {required String id,
      required List<int> measures,
      @TimestampConverter() required DateTime dueOn,
      required int tempo,
      required bool metronomeRequired,
      @TimestampNullableConverter() DateTime? startedAt,
      @TimestampNullableConverter() DateTime? finishedAt}) {
    return _Chunk(
      id: id,
      measures: measures,
      dueOn: dueOn,
      tempo: tempo,
      metronomeRequired: metronomeRequired,
      startedAt: startedAt,
      finishedAt: finishedAt,
    );
  }

  Chunk fromJson(Map<String, Object?> json) {
    return Chunk.fromJson(json);
  }
}

/// @nodoc
const $Chunk = _$ChunkTearOff();

/// @nodoc
mixin _$Chunk {
  /// The unique ID of this chunk, used to write back to Firestore
  String get id => throw _privateConstructorUsedError;

  /// The measures that this chunk includes
  List<int> get measures => throw _privateConstructorUsedError;

  /// The first date on which this chunk is due. This is important for ensuring
  /// a chunk that's has been due for 2 days can be prioritised over a chunk
  /// that's only due today.
  @TimestampConverter()
  DateTime get dueOn => throw _privateConstructorUsedError;

  /// The tempo at which the user should be able to successfully play this
  /// chunk, if the user wishes to advance all the measures within.
  int get tempo => throw _privateConstructorUsedError;

  /// Indicates whether the metronome is required when practicing this chunk.
  /// This will be the case when the aim is to improve upon the tempo, rather
  /// than consolidating the current tempo at which the user can play it.
  bool get metronomeRequired => throw _privateConstructorUsedError;

  /// Used when writing back to the Firestore, it indicates when the user
  /// started practicing this chunk.
  @TimestampNullableConverter()
  DateTime? get startedAt => throw _privateConstructorUsedError;

  /// Used when writing back to the Firestore, it indicates when the user
  /// finished practicing the chunk.
  @TimestampNullableConverter()
  DateTime? get finishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChunkCopyWith<Chunk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChunkCopyWith<$Res> {
  factory $ChunkCopyWith(Chunk value, $Res Function(Chunk) then) =
      _$ChunkCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<int> measures,
      @TimestampConverter() DateTime dueOn,
      int tempo,
      bool metronomeRequired,
      @TimestampNullableConverter() DateTime? startedAt,
      @TimestampNullableConverter() DateTime? finishedAt});
}

/// @nodoc
class _$ChunkCopyWithImpl<$Res> implements $ChunkCopyWith<$Res> {
  _$ChunkCopyWithImpl(this._value, this._then);

  final Chunk _value;
  // ignore: unused_field
  final $Res Function(Chunk) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? measures = freezed,
    Object? dueOn = freezed,
    Object? tempo = freezed,
    Object? metronomeRequired = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      measures: measures == freezed
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dueOn: dueOn == freezed
          ? _value.dueOn
          : dueOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      metronomeRequired: metronomeRequired == freezed
          ? _value.metronomeRequired
          : metronomeRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ChunkCopyWith<$Res> implements $ChunkCopyWith<$Res> {
  factory _$ChunkCopyWith(_Chunk value, $Res Function(_Chunk) then) =
      __$ChunkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<int> measures,
      @TimestampConverter() DateTime dueOn,
      int tempo,
      bool metronomeRequired,
      @TimestampNullableConverter() DateTime? startedAt,
      @TimestampNullableConverter() DateTime? finishedAt});
}

/// @nodoc
class __$ChunkCopyWithImpl<$Res> extends _$ChunkCopyWithImpl<$Res>
    implements _$ChunkCopyWith<$Res> {
  __$ChunkCopyWithImpl(_Chunk _value, $Res Function(_Chunk) _then)
      : super(_value, (v) => _then(v as _Chunk));

  @override
  _Chunk get _value => super._value as _Chunk;

  @override
  $Res call({
    Object? id = freezed,
    Object? measures = freezed,
    Object? dueOn = freezed,
    Object? tempo = freezed,
    Object? metronomeRequired = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_Chunk(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      measures: measures == freezed
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dueOn: dueOn == freezed
          ? _value.dueOn
          : dueOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      metronomeRequired: metronomeRequired == freezed
          ? _value.metronomeRequired
          : metronomeRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chunk implements _Chunk {
  const _$_Chunk(
      {required this.id,
      required this.measures,
      @TimestampConverter() required this.dueOn,
      required this.tempo,
      required this.metronomeRequired,
      @TimestampNullableConverter() this.startedAt,
      @TimestampNullableConverter() this.finishedAt});

  factory _$_Chunk.fromJson(Map<String, dynamic> json) =>
      _$$_ChunkFromJson(json);

  @override

  /// The unique ID of this chunk, used to write back to Firestore
  final String id;
  @override

  /// The measures that this chunk includes
  final List<int> measures;
  @override

  /// The first date on which this chunk is due. This is important for ensuring
  /// a chunk that's has been due for 2 days can be prioritised over a chunk
  /// that's only due today.
  @TimestampConverter()
  final DateTime dueOn;
  @override

  /// The tempo at which the user should be able to successfully play this
  /// chunk, if the user wishes to advance all the measures within.
  final int tempo;
  @override

  /// Indicates whether the metronome is required when practicing this chunk.
  /// This will be the case when the aim is to improve upon the tempo, rather
  /// than consolidating the current tempo at which the user can play it.
  final bool metronomeRequired;
  @override

  /// Used when writing back to the Firestore, it indicates when the user
  /// started practicing this chunk.
  @TimestampNullableConverter()
  final DateTime? startedAt;
  @override

  /// Used when writing back to the Firestore, it indicates when the user
  /// finished practicing the chunk.
  @TimestampNullableConverter()
  final DateTime? finishedAt;

  @override
  String toString() {
    return 'Chunk(id: $id, measures: $measures, dueOn: $dueOn, tempo: $tempo, metronomeRequired: $metronomeRequired, startedAt: $startedAt, finishedAt: $finishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chunk &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.measures, measures) &&
            const DeepCollectionEquality().equals(other.dueOn, dueOn) &&
            const DeepCollectionEquality().equals(other.tempo, tempo) &&
            const DeepCollectionEquality()
                .equals(other.metronomeRequired, metronomeRequired) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality()
                .equals(other.finishedAt, finishedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(measures),
      const DeepCollectionEquality().hash(dueOn),
      const DeepCollectionEquality().hash(tempo),
      const DeepCollectionEquality().hash(metronomeRequired),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(finishedAt));

  @JsonKey(ignore: true)
  @override
  _$ChunkCopyWith<_Chunk> get copyWith =>
      __$ChunkCopyWithImpl<_Chunk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChunkToJson(this);
  }
}

abstract class _Chunk implements Chunk {
  const factory _Chunk(
      {required String id,
      required List<int> measures,
      @TimestampConverter() required DateTime dueOn,
      required int tempo,
      required bool metronomeRequired,
      @TimestampNullableConverter() DateTime? startedAt,
      @TimestampNullableConverter() DateTime? finishedAt}) = _$_Chunk;

  factory _Chunk.fromJson(Map<String, dynamic> json) = _$_Chunk.fromJson;

  @override

  /// The unique ID of this chunk, used to write back to Firestore
  String get id;
  @override

  /// The measures that this chunk includes
  List<int> get measures;
  @override

  /// The first date on which this chunk is due. This is important for ensuring
  /// a chunk that's has been due for 2 days can be prioritised over a chunk
  /// that's only due today.
  @TimestampConverter()
  DateTime get dueOn;
  @override

  /// The tempo at which the user should be able to successfully play this
  /// chunk, if the user wishes to advance all the measures within.
  int get tempo;
  @override

  /// Indicates whether the metronome is required when practicing this chunk.
  /// This will be the case when the aim is to improve upon the tempo, rather
  /// than consolidating the current tempo at which the user can play it.
  bool get metronomeRequired;
  @override

  /// Used when writing back to the Firestore, it indicates when the user
  /// started practicing this chunk.
  @TimestampNullableConverter()
  DateTime? get startedAt;
  @override

  /// Used when writing back to the Firestore, it indicates when the user
  /// finished practicing the chunk.
  @TimestampNullableConverter()
  DateTime? get finishedAt;
  @override
  @JsonKey(ignore: true)
  _$ChunkCopyWith<_Chunk> get copyWith => throw _privateConstructorUsedError;
}
