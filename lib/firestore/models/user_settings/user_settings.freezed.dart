// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSettingsTearOff {
  const _$UserSettingsTearOff();

  _UserSettings call(
      {bool studyPiecesBackwards = true,
      List<int> metronomeDays = const [3, 7],
      int baseTempo = 30,
      int baseChunkLength = 2,
      int maxPracticeInterval = 4,
      bool startWithTechnicalExercises = true,
      int technicalExercisesDailyTime = 15,
      required List<Instrument> instrument}) {
    return _UserSettings(
      studyPiecesBackwards: studyPiecesBackwards,
      metronomeDays: metronomeDays,
      baseTempo: baseTempo,
      baseChunkLength: baseChunkLength,
      maxPracticeInterval: maxPracticeInterval,
      startWithTechnicalExercises: startWithTechnicalExercises,
      technicalExercisesDailyTime: technicalExercisesDailyTime,
      instrument: instrument,
    );
  }
}

/// @nodoc
const $UserSettings = _$UserSettingsTearOff();

/// @nodoc
mixin _$UserSettings {
  /// Whether the user wishes to learn new pieces backwards, allowing them to
  /// always play into things that are already familiar.
  /// Set to true by default because it works really well but many people
  /// don't know it is a valid strategy.
  bool get studyPiecesBackwards => throw _privateConstructorUsedError;

  /// Days on which the user uses the metronome to increase the tempo at
  /// which they can play the chunk.
  /// On other days, the user should focus more on controlled, slow and
  /// methodical playing.
  List<int> get metronomeDays => throw _privateConstructorUsedError;

  /// The tempo at which the metronome starts when first learning a piece.
  /// Anything below this tempo is considered very new and required daily
  /// practice and repetition.
  int get baseTempo => throw _privateConstructorUsedError;

  /// The default length for chunks in measures. Can be configured when
  /// creating the piece.
  int get baseChunkLength => throw _privateConstructorUsedError;

  /// The user will practice this measure at least every X days. This value
  /// is X.
  int get maxPracticeInterval => throw _privateConstructorUsedError;

  /// When set to true, the technical exercises are offered for practice first
  /// thing of the day.
  bool get startWithTechnicalExercises => throw _privateConstructorUsedError;

  /// The daily time for which the user wishes to practice technical
  /// exercises.
  int get technicalExercisesDailyTime => throw _privateConstructorUsedError;

  /// The instruments which theh user plays, which is important for showing
  /// the relevant works per composer.
  List<Instrument> get instrument => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsCopyWith<UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsCopyWith<$Res> {
  factory $UserSettingsCopyWith(
          UserSettings value, $Res Function(UserSettings) then) =
      _$UserSettingsCopyWithImpl<$Res>;
  $Res call(
      {bool studyPiecesBackwards,
      List<int> metronomeDays,
      int baseTempo,
      int baseChunkLength,
      int maxPracticeInterval,
      bool startWithTechnicalExercises,
      int technicalExercisesDailyTime,
      List<Instrument> instrument});
}

/// @nodoc
class _$UserSettingsCopyWithImpl<$Res> implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._value, this._then);

  final UserSettings _value;
  // ignore: unused_field
  final $Res Function(UserSettings) _then;

  @override
  $Res call({
    Object? studyPiecesBackwards = freezed,
    Object? metronomeDays = freezed,
    Object? baseTempo = freezed,
    Object? baseChunkLength = freezed,
    Object? maxPracticeInterval = freezed,
    Object? startWithTechnicalExercises = freezed,
    Object? technicalExercisesDailyTime = freezed,
    Object? instrument = freezed,
  }) {
    return _then(_value.copyWith(
      studyPiecesBackwards: studyPiecesBackwards == freezed
          ? _value.studyPiecesBackwards
          : studyPiecesBackwards // ignore: cast_nullable_to_non_nullable
              as bool,
      metronomeDays: metronomeDays == freezed
          ? _value.metronomeDays
          : metronomeDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      baseTempo: baseTempo == freezed
          ? _value.baseTempo
          : baseTempo // ignore: cast_nullable_to_non_nullable
              as int,
      baseChunkLength: baseChunkLength == freezed
          ? _value.baseChunkLength
          : baseChunkLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxPracticeInterval: maxPracticeInterval == freezed
          ? _value.maxPracticeInterval
          : maxPracticeInterval // ignore: cast_nullable_to_non_nullable
              as int,
      startWithTechnicalExercises: startWithTechnicalExercises == freezed
          ? _value.startWithTechnicalExercises
          : startWithTechnicalExercises // ignore: cast_nullable_to_non_nullable
              as bool,
      technicalExercisesDailyTime: technicalExercisesDailyTime == freezed
          ? _value.technicalExercisesDailyTime
          : technicalExercisesDailyTime // ignore: cast_nullable_to_non_nullable
              as int,
      instrument: instrument == freezed
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as List<Instrument>,
    ));
  }
}

/// @nodoc
abstract class _$UserSettingsCopyWith<$Res>
    implements $UserSettingsCopyWith<$Res> {
  factory _$UserSettingsCopyWith(
          _UserSettings value, $Res Function(_UserSettings) then) =
      __$UserSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool studyPiecesBackwards,
      List<int> metronomeDays,
      int baseTempo,
      int baseChunkLength,
      int maxPracticeInterval,
      bool startWithTechnicalExercises,
      int technicalExercisesDailyTime,
      List<Instrument> instrument});
}

/// @nodoc
class __$UserSettingsCopyWithImpl<$Res> extends _$UserSettingsCopyWithImpl<$Res>
    implements _$UserSettingsCopyWith<$Res> {
  __$UserSettingsCopyWithImpl(
      _UserSettings _value, $Res Function(_UserSettings) _then)
      : super(_value, (v) => _then(v as _UserSettings));

  @override
  _UserSettings get _value => super._value as _UserSettings;

  @override
  $Res call({
    Object? studyPiecesBackwards = freezed,
    Object? metronomeDays = freezed,
    Object? baseTempo = freezed,
    Object? baseChunkLength = freezed,
    Object? maxPracticeInterval = freezed,
    Object? startWithTechnicalExercises = freezed,
    Object? technicalExercisesDailyTime = freezed,
    Object? instrument = freezed,
  }) {
    return _then(_UserSettings(
      studyPiecesBackwards: studyPiecesBackwards == freezed
          ? _value.studyPiecesBackwards
          : studyPiecesBackwards // ignore: cast_nullable_to_non_nullable
              as bool,
      metronomeDays: metronomeDays == freezed
          ? _value.metronomeDays
          : metronomeDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      baseTempo: baseTempo == freezed
          ? _value.baseTempo
          : baseTempo // ignore: cast_nullable_to_non_nullable
              as int,
      baseChunkLength: baseChunkLength == freezed
          ? _value.baseChunkLength
          : baseChunkLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxPracticeInterval: maxPracticeInterval == freezed
          ? _value.maxPracticeInterval
          : maxPracticeInterval // ignore: cast_nullable_to_non_nullable
              as int,
      startWithTechnicalExercises: startWithTechnicalExercises == freezed
          ? _value.startWithTechnicalExercises
          : startWithTechnicalExercises // ignore: cast_nullable_to_non_nullable
              as bool,
      technicalExercisesDailyTime: technicalExercisesDailyTime == freezed
          ? _value.technicalExercisesDailyTime
          : technicalExercisesDailyTime // ignore: cast_nullable_to_non_nullable
              as int,
      instrument: instrument == freezed
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as List<Instrument>,
    ));
  }
}

/// @nodoc

class _$_UserSettings implements _UserSettings {
  const _$_UserSettings(
      {this.studyPiecesBackwards = true,
      this.metronomeDays = const [3, 7],
      this.baseTempo = 30,
      this.baseChunkLength = 2,
      this.maxPracticeInterval = 4,
      this.startWithTechnicalExercises = true,
      this.technicalExercisesDailyTime = 15,
      required this.instrument});

  @JsonKey()
  @override

  /// Whether the user wishes to learn new pieces backwards, allowing them to
  /// always play into things that are already familiar.
  /// Set to true by default because it works really well but many people
  /// don't know it is a valid strategy.
  final bool studyPiecesBackwards;
  @JsonKey()
  @override

  /// Days on which the user uses the metronome to increase the tempo at
  /// which they can play the chunk.
  /// On other days, the user should focus more on controlled, slow and
  /// methodical playing.
  final List<int> metronomeDays;
  @JsonKey()
  @override

  /// The tempo at which the metronome starts when first learning a piece.
  /// Anything below this tempo is considered very new and required daily
  /// practice and repetition.
  final int baseTempo;
  @JsonKey()
  @override

  /// The default length for chunks in measures. Can be configured when
  /// creating the piece.
  final int baseChunkLength;
  @JsonKey()
  @override

  /// The user will practice this measure at least every X days. This value
  /// is X.
  final int maxPracticeInterval;
  @JsonKey()
  @override

  /// When set to true, the technical exercises are offered for practice first
  /// thing of the day.
  final bool startWithTechnicalExercises;
  @JsonKey()
  @override

  /// The daily time for which the user wishes to practice technical
  /// exercises.
  final int technicalExercisesDailyTime;
  @override

  /// The instruments which theh user plays, which is important for showing
  /// the relevant works per composer.
  final List<Instrument> instrument;

  @override
  String toString() {
    return 'UserSettings(studyPiecesBackwards: $studyPiecesBackwards, metronomeDays: $metronomeDays, baseTempo: $baseTempo, baseChunkLength: $baseChunkLength, maxPracticeInterval: $maxPracticeInterval, startWithTechnicalExercises: $startWithTechnicalExercises, technicalExercisesDailyTime: $technicalExercisesDailyTime, instrument: $instrument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSettings &&
            const DeepCollectionEquality()
                .equals(other.studyPiecesBackwards, studyPiecesBackwards) &&
            const DeepCollectionEquality()
                .equals(other.metronomeDays, metronomeDays) &&
            const DeepCollectionEquality().equals(other.baseTempo, baseTempo) &&
            const DeepCollectionEquality()
                .equals(other.baseChunkLength, baseChunkLength) &&
            const DeepCollectionEquality()
                .equals(other.maxPracticeInterval, maxPracticeInterval) &&
            const DeepCollectionEquality().equals(
                other.startWithTechnicalExercises,
                startWithTechnicalExercises) &&
            const DeepCollectionEquality().equals(
                other.technicalExercisesDailyTime,
                technicalExercisesDailyTime) &&
            const DeepCollectionEquality()
                .equals(other.instrument, instrument));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(studyPiecesBackwards),
      const DeepCollectionEquality().hash(metronomeDays),
      const DeepCollectionEquality().hash(baseTempo),
      const DeepCollectionEquality().hash(baseChunkLength),
      const DeepCollectionEquality().hash(maxPracticeInterval),
      const DeepCollectionEquality().hash(startWithTechnicalExercises),
      const DeepCollectionEquality().hash(technicalExercisesDailyTime),
      const DeepCollectionEquality().hash(instrument));

  @JsonKey(ignore: true)
  @override
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      __$UserSettingsCopyWithImpl<_UserSettings>(this, _$identity);
}

abstract class _UserSettings implements UserSettings {
  const factory _UserSettings(
      {bool studyPiecesBackwards,
      List<int> metronomeDays,
      int baseTempo,
      int baseChunkLength,
      int maxPracticeInterval,
      bool startWithTechnicalExercises,
      int technicalExercisesDailyTime,
      required List<Instrument> instrument}) = _$_UserSettings;

  @override

  /// Whether the user wishes to learn new pieces backwards, allowing them to
  /// always play into things that are already familiar.
  /// Set to true by default because it works really well but many people
  /// don't know it is a valid strategy.
  bool get studyPiecesBackwards;
  @override

  /// Days on which the user uses the metronome to increase the tempo at
  /// which they can play the chunk.
  /// On other days, the user should focus more on controlled, slow and
  /// methodical playing.
  List<int> get metronomeDays;
  @override

  /// The tempo at which the metronome starts when first learning a piece.
  /// Anything below this tempo is considered very new and required daily
  /// practice and repetition.
  int get baseTempo;
  @override

  /// The default length for chunks in measures. Can be configured when
  /// creating the piece.
  int get baseChunkLength;
  @override

  /// The user will practice this measure at least every X days. This value
  /// is X.
  int get maxPracticeInterval;
  @override

  /// When set to true, the technical exercises are offered for practice first
  /// thing of the day.
  bool get startWithTechnicalExercises;
  @override

  /// The daily time for which the user wishes to practice technical
  /// exercises.
  int get technicalExercisesDailyTime;
  @override

  /// The instruments which theh user plays, which is important for showing
  /// the relevant works per composer.
  List<Instrument> get instrument;
  @override
  @JsonKey(ignore: true)
  _$UserSettingsCopyWith<_UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
