// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'measure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return _Measure.fromJson(json);
}

/// @nodoc
class _$MeasureTearOff {
  const _$MeasureTearOff();

  _Measure call(
      {required int measureNo,
      required String pieceId,
      @TimestampConverter() required DateTime dueDate,
      @TimestampListConverter() required List<DateTime> practiceDates,
      required int? tempo,
      required int recentQualityOfPractice,
      required int qualityOfMemorization}) {
    return _Measure(
      measureNo: measureNo,
      pieceId: pieceId,
      dueDate: dueDate,
      practiceDates: practiceDates,
      tempo: tempo,
      recentQualityOfPractice: recentQualityOfPractice,
      qualityOfMemorization: qualityOfMemorization,
    );
  }

  Measure fromJson(Map<String, Object?> json) {
    return Measure.fromJson(json);
  }
}

/// @nodoc
const $Measure = _$MeasureTearOff();

/// @nodoc
mixin _$Measure {
  /// The number of the measure within the piece.
  int get measureNo => throw _privateConstructorUsedError;

  /// The id of the piece.
  String get pieceId => throw _privateConstructorUsedError;

  /// A DateTime that indicates when the user has to practice this
  /// measure.
  @TimestampConverter()
  DateTime get dueDate => throw _privateConstructorUsedError;

  /// A list of datetimes which indicate when the user practiced this
  /// measure.
  @TimestampListConverter()
  List<DateTime> get practiceDates => throw _privateConstructorUsedError;

  /// The metronome tempo at which the user can play this measure with
  /// confidence. As long as this is null, the user must practice the
  /// measure daily.
  int? get tempo => throw _privateConstructorUsedError;

  /// An average of the last 5 grades the user gave his practice of the
  /// measure. At the end of each chunk, the user is asked to rate the chunk
  /// as a whole and, if the rating they gave is poor, they get to specify
  /// which measure gave them a hard time. This average is used to decide
  /// when the measure must be practiced again.
  int get recentQualityOfPractice => throw _privateConstructorUsedError;

  /// On a scale of 1 to 5 how well the user has memorized this measure.
  /// Memorization only is improved or worsened when the user practices it
  /// specifically.
  int get qualityOfMemorization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureCopyWith<Measure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureCopyWith<$Res> {
  factory $MeasureCopyWith(Measure value, $Res Function(Measure) then) =
      _$MeasureCopyWithImpl<$Res>;
  $Res call(
      {int measureNo,
      String pieceId,
      @TimestampConverter() DateTime dueDate,
      @TimestampListConverter() List<DateTime> practiceDates,
      int? tempo,
      int recentQualityOfPractice,
      int qualityOfMemorization});
}

/// @nodoc
class _$MeasureCopyWithImpl<$Res> implements $MeasureCopyWith<$Res> {
  _$MeasureCopyWithImpl(this._value, this._then);

  final Measure _value;
  // ignore: unused_field
  final $Res Function(Measure) _then;

  @override
  $Res call({
    Object? measureNo = freezed,
    Object? pieceId = freezed,
    Object? dueDate = freezed,
    Object? practiceDates = freezed,
    Object? tempo = freezed,
    Object? recentQualityOfPractice = freezed,
    Object? qualityOfMemorization = freezed,
  }) {
    return _then(_value.copyWith(
      measureNo: measureNo == freezed
          ? _value.measureNo
          : measureNo // ignore: cast_nullable_to_non_nullable
              as int,
      pieceId: pieceId == freezed
          ? _value.pieceId
          : pieceId // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      practiceDates: practiceDates == freezed
          ? _value.practiceDates
          : practiceDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int?,
      recentQualityOfPractice: recentQualityOfPractice == freezed
          ? _value.recentQualityOfPractice
          : recentQualityOfPractice // ignore: cast_nullable_to_non_nullable
              as int,
      qualityOfMemorization: qualityOfMemorization == freezed
          ? _value.qualityOfMemorization
          : qualityOfMemorization // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MeasureCopyWith<$Res> implements $MeasureCopyWith<$Res> {
  factory _$MeasureCopyWith(_Measure value, $Res Function(_Measure) then) =
      __$MeasureCopyWithImpl<$Res>;
  @override
  $Res call(
      {int measureNo,
      String pieceId,
      @TimestampConverter() DateTime dueDate,
      @TimestampListConverter() List<DateTime> practiceDates,
      int? tempo,
      int recentQualityOfPractice,
      int qualityOfMemorization});
}

/// @nodoc
class __$MeasureCopyWithImpl<$Res> extends _$MeasureCopyWithImpl<$Res>
    implements _$MeasureCopyWith<$Res> {
  __$MeasureCopyWithImpl(_Measure _value, $Res Function(_Measure) _then)
      : super(_value, (v) => _then(v as _Measure));

  @override
  _Measure get _value => super._value as _Measure;

  @override
  $Res call({
    Object? measureNo = freezed,
    Object? pieceId = freezed,
    Object? dueDate = freezed,
    Object? practiceDates = freezed,
    Object? tempo = freezed,
    Object? recentQualityOfPractice = freezed,
    Object? qualityOfMemorization = freezed,
  }) {
    return _then(_Measure(
      measureNo: measureNo == freezed
          ? _value.measureNo
          : measureNo // ignore: cast_nullable_to_non_nullable
              as int,
      pieceId: pieceId == freezed
          ? _value.pieceId
          : pieceId // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      practiceDates: practiceDates == freezed
          ? _value.practiceDates
          : practiceDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int?,
      recentQualityOfPractice: recentQualityOfPractice == freezed
          ? _value.recentQualityOfPractice
          : recentQualityOfPractice // ignore: cast_nullable_to_non_nullable
              as int,
      qualityOfMemorization: qualityOfMemorization == freezed
          ? _value.qualityOfMemorization
          : qualityOfMemorization // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Measure implements _Measure {
  const _$_Measure(
      {required this.measureNo,
      required this.pieceId,
      @TimestampConverter() required this.dueDate,
      @TimestampListConverter() required this.practiceDates,
      required this.tempo,
      required this.recentQualityOfPractice,
      required this.qualityOfMemorization});

  factory _$_Measure.fromJson(Map<String, dynamic> json) =>
      _$$_MeasureFromJson(json);

  @override

  /// The number of the measure within the piece.
  final int measureNo;
  @override

  /// The id of the piece.
  final String pieceId;
  @override

  /// A DateTime that indicates when the user has to practice this
  /// measure.
  @TimestampConverter()
  final DateTime dueDate;
  @override

  /// A list of datetimes which indicate when the user practiced this
  /// measure.
  @TimestampListConverter()
  final List<DateTime> practiceDates;
  @override

  /// The metronome tempo at which the user can play this measure with
  /// confidence. As long as this is null, the user must practice the
  /// measure daily.
  final int? tempo;
  @override

  /// An average of the last 5 grades the user gave his practice of the
  /// measure. At the end of each chunk, the user is asked to rate the chunk
  /// as a whole and, if the rating they gave is poor, they get to specify
  /// which measure gave them a hard time. This average is used to decide
  /// when the measure must be practiced again.
  final int recentQualityOfPractice;
  @override

  /// On a scale of 1 to 5 how well the user has memorized this measure.
  /// Memorization only is improved or worsened when the user practices it
  /// specifically.
  final int qualityOfMemorization;

  @override
  String toString() {
    return 'Measure(measureNo: $measureNo, pieceId: $pieceId, dueDate: $dueDate, practiceDates: $practiceDates, tempo: $tempo, recentQualityOfPractice: $recentQualityOfPractice, qualityOfMemorization: $qualityOfMemorization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Measure &&
            const DeepCollectionEquality().equals(other.measureNo, measureNo) &&
            const DeepCollectionEquality().equals(other.pieceId, pieceId) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality()
                .equals(other.practiceDates, practiceDates) &&
            const DeepCollectionEquality().equals(other.tempo, tempo) &&
            const DeepCollectionEquality().equals(
                other.recentQualityOfPractice, recentQualityOfPractice) &&
            const DeepCollectionEquality()
                .equals(other.qualityOfMemorization, qualityOfMemorization));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(measureNo),
      const DeepCollectionEquality().hash(pieceId),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(practiceDates),
      const DeepCollectionEquality().hash(tempo),
      const DeepCollectionEquality().hash(recentQualityOfPractice),
      const DeepCollectionEquality().hash(qualityOfMemorization));

  @JsonKey(ignore: true)
  @override
  _$MeasureCopyWith<_Measure> get copyWith =>
      __$MeasureCopyWithImpl<_Measure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasureToJson(this);
  }
}

abstract class _Measure implements Measure {
  const factory _Measure(
      {required int measureNo,
      required String pieceId,
      @TimestampConverter() required DateTime dueDate,
      @TimestampListConverter() required List<DateTime> practiceDates,
      required int? tempo,
      required int recentQualityOfPractice,
      required int qualityOfMemorization}) = _$_Measure;

  factory _Measure.fromJson(Map<String, dynamic> json) = _$_Measure.fromJson;

  @override

  /// The number of the measure within the piece.
  int get measureNo;
  @override

  /// The id of the piece.
  String get pieceId;
  @override

  /// A DateTime that indicates when the user has to practice this
  /// measure.
  @TimestampConverter()
  DateTime get dueDate;
  @override

  /// A list of datetimes which indicate when the user practiced this
  /// measure.
  @TimestampListConverter()
  List<DateTime> get practiceDates;
  @override

  /// The metronome tempo at which the user can play this measure with
  /// confidence. As long as this is null, the user must practice the
  /// measure daily.
  int? get tempo;
  @override

  /// An average of the last 5 grades the user gave his practice of the
  /// measure. At the end of each chunk, the user is asked to rate the chunk
  /// as a whole and, if the rating they gave is poor, they get to specify
  /// which measure gave them a hard time. This average is used to decide
  /// when the measure must be practiced again.
  int get recentQualityOfPractice;
  @override

  /// On a scale of 1 to 5 how well the user has memorized this measure.
  /// Memorization only is improved or worsened when the user practices it
  /// specifically.
  int get qualityOfMemorization;
  @override
  @JsonKey(ignore: true)
  _$MeasureCopyWith<_Measure> get copyWith =>
      throw _privateConstructorUsedError;
}
