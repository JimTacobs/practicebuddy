// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repetition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepetitionTearOff {
  const _$RepetitionTearOff();

  _Repetition call(
      {required int firstMeasure,
      required int lastMeasure,
      required int nextMeasure,
      List<int> measuresToSkipOnRepetition = const []}) {
    return _Repetition(
      firstMeasure: firstMeasure,
      lastMeasure: lastMeasure,
      nextMeasure: nextMeasure,
      measuresToSkipOnRepetition: measuresToSkipOnRepetition,
    );
  }
}

/// @nodoc
const $Repetition = _$RepetitionTearOff();

/// @nodoc
mixin _$Repetition {
  /// The measure to which the repetition points back
  int get firstMeasure => throw _privateConstructorUsedError;

  /// The measure at which the repetition sign is
  int get lastMeasure => throw _privateConstructorUsedError;

  /// The measure to continue playing after the repetition
  int get nextMeasure => throw _privateConstructorUsedError;

  /// The measures which need to be skipped while playing the repetition.
  /// This is required when there's an alternative ending in the repetition.
  List<int> get measuresToSkipOnRepetition =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepetitionCopyWith<Repetition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepetitionCopyWith<$Res> {
  factory $RepetitionCopyWith(
          Repetition value, $Res Function(Repetition) then) =
      _$RepetitionCopyWithImpl<$Res>;
  $Res call(
      {int firstMeasure,
      int lastMeasure,
      int nextMeasure,
      List<int> measuresToSkipOnRepetition});
}

/// @nodoc
class _$RepetitionCopyWithImpl<$Res> implements $RepetitionCopyWith<$Res> {
  _$RepetitionCopyWithImpl(this._value, this._then);

  final Repetition _value;
  // ignore: unused_field
  final $Res Function(Repetition) _then;

  @override
  $Res call({
    Object? firstMeasure = freezed,
    Object? lastMeasure = freezed,
    Object? nextMeasure = freezed,
    Object? measuresToSkipOnRepetition = freezed,
  }) {
    return _then(_value.copyWith(
      firstMeasure: firstMeasure == freezed
          ? _value.firstMeasure
          : firstMeasure // ignore: cast_nullable_to_non_nullable
              as int,
      lastMeasure: lastMeasure == freezed
          ? _value.lastMeasure
          : lastMeasure // ignore: cast_nullable_to_non_nullable
              as int,
      nextMeasure: nextMeasure == freezed
          ? _value.nextMeasure
          : nextMeasure // ignore: cast_nullable_to_non_nullable
              as int,
      measuresToSkipOnRepetition: measuresToSkipOnRepetition == freezed
          ? _value.measuresToSkipOnRepetition
          : measuresToSkipOnRepetition // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$RepetitionCopyWith<$Res> implements $RepetitionCopyWith<$Res> {
  factory _$RepetitionCopyWith(
          _Repetition value, $Res Function(_Repetition) then) =
      __$RepetitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int firstMeasure,
      int lastMeasure,
      int nextMeasure,
      List<int> measuresToSkipOnRepetition});
}

/// @nodoc
class __$RepetitionCopyWithImpl<$Res> extends _$RepetitionCopyWithImpl<$Res>
    implements _$RepetitionCopyWith<$Res> {
  __$RepetitionCopyWithImpl(
      _Repetition _value, $Res Function(_Repetition) _then)
      : super(_value, (v) => _then(v as _Repetition));

  @override
  _Repetition get _value => super._value as _Repetition;

  @override
  $Res call({
    Object? firstMeasure = freezed,
    Object? lastMeasure = freezed,
    Object? nextMeasure = freezed,
    Object? measuresToSkipOnRepetition = freezed,
  }) {
    return _then(_Repetition(
      firstMeasure: firstMeasure == freezed
          ? _value.firstMeasure
          : firstMeasure // ignore: cast_nullable_to_non_nullable
              as int,
      lastMeasure: lastMeasure == freezed
          ? _value.lastMeasure
          : lastMeasure // ignore: cast_nullable_to_non_nullable
              as int,
      nextMeasure: nextMeasure == freezed
          ? _value.nextMeasure
          : nextMeasure // ignore: cast_nullable_to_non_nullable
              as int,
      measuresToSkipOnRepetition: measuresToSkipOnRepetition == freezed
          ? _value.measuresToSkipOnRepetition
          : measuresToSkipOnRepetition // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Repetition implements _Repetition {
  const _$_Repetition(
      {required this.firstMeasure,
      required this.lastMeasure,
      required this.nextMeasure,
      this.measuresToSkipOnRepetition = const []});

  @override

  /// The measure to which the repetition points back
  final int firstMeasure;
  @override

  /// The measure at which the repetition sign is
  final int lastMeasure;
  @override

  /// The measure to continue playing after the repetition
  final int nextMeasure;
  @JsonKey()
  @override

  /// The measures which need to be skipped while playing the repetition.
  /// This is required when there's an alternative ending in the repetition.
  final List<int> measuresToSkipOnRepetition;

  @override
  String toString() {
    return 'Repetition(firstMeasure: $firstMeasure, lastMeasure: $lastMeasure, nextMeasure: $nextMeasure, measuresToSkipOnRepetition: $measuresToSkipOnRepetition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Repetition &&
            const DeepCollectionEquality()
                .equals(other.firstMeasure, firstMeasure) &&
            const DeepCollectionEquality()
                .equals(other.lastMeasure, lastMeasure) &&
            const DeepCollectionEquality()
                .equals(other.nextMeasure, nextMeasure) &&
            const DeepCollectionEquality().equals(
                other.measuresToSkipOnRepetition, measuresToSkipOnRepetition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstMeasure),
      const DeepCollectionEquality().hash(lastMeasure),
      const DeepCollectionEquality().hash(nextMeasure),
      const DeepCollectionEquality().hash(measuresToSkipOnRepetition));

  @JsonKey(ignore: true)
  @override
  _$RepetitionCopyWith<_Repetition> get copyWith =>
      __$RepetitionCopyWithImpl<_Repetition>(this, _$identity);
}

abstract class _Repetition implements Repetition {
  const factory _Repetition(
      {required int firstMeasure,
      required int lastMeasure,
      required int nextMeasure,
      List<int> measuresToSkipOnRepetition}) = _$_Repetition;

  @override

  /// The measure to which the repetition points back
  int get firstMeasure;
  @override

  /// The measure at which the repetition sign is
  int get lastMeasure;
  @override

  /// The measure to continue playing after the repetition
  int get nextMeasure;
  @override

  /// The measures which need to be skipped while playing the repetition.
  /// This is required when there's an alternative ending in the repetition.
  List<int> get measuresToSkipOnRepetition;
  @override
  @JsonKey(ignore: true)
  _$RepetitionCopyWith<_Repetition> get copyWith =>
      throw _privateConstructorUsedError;
}
