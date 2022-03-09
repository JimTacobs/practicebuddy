import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

@freezed
class UserSettings with _$UserSettings {
  const factory UserSettings({
    /// Whether the user wishes to learn new pieces backwards, allowing them to
    /// always play into things that are already familiar.
    /// Set to true by default because it works really well but many people
    /// don't know it is a valid strategy.
    @Default(true) bool studyPiecesBackwards,

    /// Days on which the user uses the metronome to increase the tempo at
    /// which they can play the chunk.
    /// On other days, the user should focus more on controlled, slow and
    /// methodical playing.
    @Default([3, 7]) List<int> metronomeDays,

    /// The tempo at which the metronome starts when first learning a piece.
    /// Anything below this tempo is considered very new and required daily
    /// practice and repetition.
    @Default(30) int baseTempo,

    /// The default length for chunks in measures. Can be configured when
    /// creating the piece.
    @Default(2) int baseChunkLength,

    /// The user will practice this measure at least every X days. This value
    /// is X.
    @Default(4) int maxPracticeInterval,

    /// When set to true, the technical exercises are offered for practice first
    /// thing of the day.
    @Default(true) bool startWithTechnicalExercises,

    /// The daily time for which the user wishes to practice technical
    /// exercises.
    @Default(15) int technicalExercisesDailyTime,

    /// The instruments which theh user plays, which is important for showing
    /// the relevant works per composer.
    required List<Instrument> instrument,
  }) = _UserSettings;
  factory UserSettings.fromJson(Map<String, dynamic> json) => _$UserSettingsFromJson(json);
}
