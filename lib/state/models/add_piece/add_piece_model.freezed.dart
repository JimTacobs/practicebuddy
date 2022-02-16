// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_piece_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddPieceTearOff {
  const _$AddPieceTearOff();

  _AddPiece call(
      {required TextEditingController composerLastNameController,
      required TextEditingController composerFirstNameController,
      DateTime? dateOfBirth,
      DateTime? dateOfDeath,
      List<Composer> composers = const [],
      Composer? selectedComposer,
      List<Work> worksOfComposer = const [],
      Work? selectedWork}) {
    return _AddPiece(
      composerLastNameController: composerLastNameController,
      composerFirstNameController: composerFirstNameController,
      dateOfBirth: dateOfBirth,
      dateOfDeath: dateOfDeath,
      composers: composers,
      selectedComposer: selectedComposer,
      worksOfComposer: worksOfComposer,
      selectedWork: selectedWork,
    );
  }
}

/// @nodoc
const $AddPiece = _$AddPieceTearOff();

/// @nodoc
mixin _$AddPiece {
  /// Composers
  TextEditingController get composerLastNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get composerFirstNameController =>
      throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  DateTime? get dateOfDeath => throw _privateConstructorUsedError;
  List<Composer> get composers => throw _privateConstructorUsedError;
  Composer? get selectedComposer => throw _privateConstructorUsedError;

  /// Works
  List<Work> get worksOfComposer => throw _privateConstructorUsedError;
  Work? get selectedWork => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPieceCopyWith<AddPiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPieceCopyWith<$Res> {
  factory $AddPieceCopyWith(AddPiece value, $Res Function(AddPiece) then) =
      _$AddPieceCopyWithImpl<$Res>;
  $Res call(
      {TextEditingController composerLastNameController,
      TextEditingController composerFirstNameController,
      DateTime? dateOfBirth,
      DateTime? dateOfDeath,
      List<Composer> composers,
      Composer? selectedComposer,
      List<Work> worksOfComposer,
      Work? selectedWork});

  $ComposerCopyWith<$Res>? get selectedComposer;
  $WorkCopyWith<$Res>? get selectedWork;
}

/// @nodoc
class _$AddPieceCopyWithImpl<$Res> implements $AddPieceCopyWith<$Res> {
  _$AddPieceCopyWithImpl(this._value, this._then);

  final AddPiece _value;
  // ignore: unused_field
  final $Res Function(AddPiece) _then;

  @override
  $Res call({
    Object? composerLastNameController = freezed,
    Object? composerFirstNameController = freezed,
    Object? dateOfBirth = freezed,
    Object? dateOfDeath = freezed,
    Object? composers = freezed,
    Object? selectedComposer = freezed,
    Object? worksOfComposer = freezed,
    Object? selectedWork = freezed,
  }) {
    return _then(_value.copyWith(
      composerLastNameController: composerLastNameController == freezed
          ? _value.composerLastNameController
          : composerLastNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      composerFirstNameController: composerFirstNameController == freezed
          ? _value.composerFirstNameController
          : composerFirstNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOfDeath: dateOfDeath == freezed
          ? _value.dateOfDeath
          : dateOfDeath // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      composers: composers == freezed
          ? _value.composers
          : composers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
      selectedComposer: selectedComposer == freezed
          ? _value.selectedComposer
          : selectedComposer // ignore: cast_nullable_to_non_nullable
              as Composer?,
      worksOfComposer: worksOfComposer == freezed
          ? _value.worksOfComposer
          : worksOfComposer // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      selectedWork: selectedWork == freezed
          ? _value.selectedWork
          : selectedWork // ignore: cast_nullable_to_non_nullable
              as Work?,
    ));
  }

  @override
  $ComposerCopyWith<$Res>? get selectedComposer {
    if (_value.selectedComposer == null) {
      return null;
    }

    return $ComposerCopyWith<$Res>(_value.selectedComposer!, (value) {
      return _then(_value.copyWith(selectedComposer: value));
    });
  }

  @override
  $WorkCopyWith<$Res>? get selectedWork {
    if (_value.selectedWork == null) {
      return null;
    }

    return $WorkCopyWith<$Res>(_value.selectedWork!, (value) {
      return _then(_value.copyWith(selectedWork: value));
    });
  }
}

/// @nodoc
abstract class _$AddPieceCopyWith<$Res> implements $AddPieceCopyWith<$Res> {
  factory _$AddPieceCopyWith(_AddPiece value, $Res Function(_AddPiece) then) =
      __$AddPieceCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController composerLastNameController,
      TextEditingController composerFirstNameController,
      DateTime? dateOfBirth,
      DateTime? dateOfDeath,
      List<Composer> composers,
      Composer? selectedComposer,
      List<Work> worksOfComposer,
      Work? selectedWork});

  @override
  $ComposerCopyWith<$Res>? get selectedComposer;
  @override
  $WorkCopyWith<$Res>? get selectedWork;
}

/// @nodoc
class __$AddPieceCopyWithImpl<$Res> extends _$AddPieceCopyWithImpl<$Res>
    implements _$AddPieceCopyWith<$Res> {
  __$AddPieceCopyWithImpl(_AddPiece _value, $Res Function(_AddPiece) _then)
      : super(_value, (v) => _then(v as _AddPiece));

  @override
  _AddPiece get _value => super._value as _AddPiece;

  @override
  $Res call({
    Object? composerLastNameController = freezed,
    Object? composerFirstNameController = freezed,
    Object? dateOfBirth = freezed,
    Object? dateOfDeath = freezed,
    Object? composers = freezed,
    Object? selectedComposer = freezed,
    Object? worksOfComposer = freezed,
    Object? selectedWork = freezed,
  }) {
    return _then(_AddPiece(
      composerLastNameController: composerLastNameController == freezed
          ? _value.composerLastNameController
          : composerLastNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      composerFirstNameController: composerFirstNameController == freezed
          ? _value.composerFirstNameController
          : composerFirstNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateOfDeath: dateOfDeath == freezed
          ? _value.dateOfDeath
          : dateOfDeath // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      composers: composers == freezed
          ? _value.composers
          : composers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
      selectedComposer: selectedComposer == freezed
          ? _value.selectedComposer
          : selectedComposer // ignore: cast_nullable_to_non_nullable
              as Composer?,
      worksOfComposer: worksOfComposer == freezed
          ? _value.worksOfComposer
          : worksOfComposer // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      selectedWork: selectedWork == freezed
          ? _value.selectedWork
          : selectedWork // ignore: cast_nullable_to_non_nullable
              as Work?,
    ));
  }
}

/// @nodoc

class _$_AddPiece implements _AddPiece {
  const _$_AddPiece(
      {required this.composerLastNameController,
      required this.composerFirstNameController,
      this.dateOfBirth,
      this.dateOfDeath,
      this.composers = const [],
      this.selectedComposer,
      this.worksOfComposer = const [],
      this.selectedWork});

  @override

  /// Composers
  final TextEditingController composerLastNameController;
  @override
  final TextEditingController composerFirstNameController;
  @override
  final DateTime? dateOfBirth;
  @override
  final DateTime? dateOfDeath;
  @JsonKey()
  @override
  final List<Composer> composers;
  @override
  final Composer? selectedComposer;
  @JsonKey()
  @override

  /// Works
  final List<Work> worksOfComposer;
  @override
  final Work? selectedWork;

  @override
  String toString() {
    return 'AddPiece(composerLastNameController: $composerLastNameController, composerFirstNameController: $composerFirstNameController, dateOfBirth: $dateOfBirth, dateOfDeath: $dateOfDeath, composers: $composers, selectedComposer: $selectedComposer, worksOfComposer: $worksOfComposer, selectedWork: $selectedWork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddPiece &&
            const DeepCollectionEquality().equals(
                other.composerLastNameController, composerLastNameController) &&
            const DeepCollectionEquality().equals(
                other.composerFirstNameController,
                composerFirstNameController) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.dateOfDeath, dateOfDeath) &&
            const DeepCollectionEquality().equals(other.composers, composers) &&
            const DeepCollectionEquality()
                .equals(other.selectedComposer, selectedComposer) &&
            const DeepCollectionEquality()
                .equals(other.worksOfComposer, worksOfComposer) &&
            const DeepCollectionEquality()
                .equals(other.selectedWork, selectedWork));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(composerLastNameController),
      const DeepCollectionEquality().hash(composerFirstNameController),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(dateOfDeath),
      const DeepCollectionEquality().hash(composers),
      const DeepCollectionEquality().hash(selectedComposer),
      const DeepCollectionEquality().hash(worksOfComposer),
      const DeepCollectionEquality().hash(selectedWork));

  @JsonKey(ignore: true)
  @override
  _$AddPieceCopyWith<_AddPiece> get copyWith =>
      __$AddPieceCopyWithImpl<_AddPiece>(this, _$identity);
}

abstract class _AddPiece implements AddPiece {
  const factory _AddPiece(
      {required TextEditingController composerLastNameController,
      required TextEditingController composerFirstNameController,
      DateTime? dateOfBirth,
      DateTime? dateOfDeath,
      List<Composer> composers,
      Composer? selectedComposer,
      List<Work> worksOfComposer,
      Work? selectedWork}) = _$_AddPiece;

  @override

  /// Composers
  TextEditingController get composerLastNameController;
  @override
  TextEditingController get composerFirstNameController;
  @override
  DateTime? get dateOfBirth;
  @override
  DateTime? get dateOfDeath;
  @override
  List<Composer> get composers;
  @override
  Composer? get selectedComposer;
  @override

  /// Works
  List<Work> get worksOfComposer;
  @override
  Work? get selectedWork;
  @override
  @JsonKey(ignore: true)
  _$AddPieceCopyWith<_AddPiece> get copyWith =>
      throw _privateConstructorUsedError;
}
