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
      required TextEditingController composerDateOfBirthController,
      required TextEditingController composerDateOfDeathController,
      List<Composer> composers = const [],
      List<Composer> filteredComposers = const [],
      Composer? selectedComposer}) {
    return _AddPiece(
      composerLastNameController: composerLastNameController,
      composerFirstNameController: composerFirstNameController,
      composerDateOfBirthController: composerDateOfBirthController,
      composerDateOfDeathController: composerDateOfDeathController,
      composers: composers,
      filteredComposers: filteredComposers,
      selectedComposer: selectedComposer,
    );
  }
}

/// @nodoc
const $AddPiece = _$AddPieceTearOff();

/// @nodoc
mixin _$AddPiece {
  TextEditingController get composerLastNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get composerFirstNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get composerDateOfBirthController =>
      throw _privateConstructorUsedError;
  TextEditingController get composerDateOfDeathController =>
      throw _privateConstructorUsedError;
  List<Composer> get composers => throw _privateConstructorUsedError;
  List<Composer> get filteredComposers => throw _privateConstructorUsedError;
  Composer? get selectedComposer => throw _privateConstructorUsedError;

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
      TextEditingController composerDateOfBirthController,
      TextEditingController composerDateOfDeathController,
      List<Composer> composers,
      List<Composer> filteredComposers,
      Composer? selectedComposer});

  $ComposerCopyWith<$Res>? get selectedComposer;
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
    Object? composerDateOfBirthController = freezed,
    Object? composerDateOfDeathController = freezed,
    Object? composers = freezed,
    Object? filteredComposers = freezed,
    Object? selectedComposer = freezed,
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
      composerDateOfBirthController: composerDateOfBirthController == freezed
          ? _value.composerDateOfBirthController
          : composerDateOfBirthController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      composerDateOfDeathController: composerDateOfDeathController == freezed
          ? _value.composerDateOfDeathController
          : composerDateOfDeathController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      composers: composers == freezed
          ? _value.composers
          : composers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
      filteredComposers: filteredComposers == freezed
          ? _value.filteredComposers
          : filteredComposers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
      selectedComposer: selectedComposer == freezed
          ? _value.selectedComposer
          : selectedComposer // ignore: cast_nullable_to_non_nullable
              as Composer?,
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
}

/// @nodoc
abstract class _$AddPieceCopyWith<$Res> implements $AddPieceCopyWith<$Res> {
  factory _$AddPieceCopyWith(_AddPiece value, $Res Function(_AddPiece) then) =
      __$AddPieceCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextEditingController composerLastNameController,
      TextEditingController composerFirstNameController,
      TextEditingController composerDateOfBirthController,
      TextEditingController composerDateOfDeathController,
      List<Composer> composers,
      List<Composer> filteredComposers,
      Composer? selectedComposer});

  @override
  $ComposerCopyWith<$Res>? get selectedComposer;
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
    Object? composerDateOfBirthController = freezed,
    Object? composerDateOfDeathController = freezed,
    Object? composers = freezed,
    Object? filteredComposers = freezed,
    Object? selectedComposer = freezed,
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
      composerDateOfBirthController: composerDateOfBirthController == freezed
          ? _value.composerDateOfBirthController
          : composerDateOfBirthController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      composerDateOfDeathController: composerDateOfDeathController == freezed
          ? _value.composerDateOfDeathController
          : composerDateOfDeathController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      composers: composers == freezed
          ? _value.composers
          : composers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
      filteredComposers: filteredComposers == freezed
          ? _value.filteredComposers
          : filteredComposers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
      selectedComposer: selectedComposer == freezed
          ? _value.selectedComposer
          : selectedComposer // ignore: cast_nullable_to_non_nullable
              as Composer?,
    ));
  }
}

/// @nodoc

class _$_AddPiece implements _AddPiece {
  const _$_AddPiece(
      {required this.composerLastNameController,
      required this.composerFirstNameController,
      required this.composerDateOfBirthController,
      required this.composerDateOfDeathController,
      this.composers = const [],
      this.filteredComposers = const [],
      this.selectedComposer});

  @override
  final TextEditingController composerLastNameController;
  @override
  final TextEditingController composerFirstNameController;
  @override
  final TextEditingController composerDateOfBirthController;
  @override
  final TextEditingController composerDateOfDeathController;
  @JsonKey()
  @override
  final List<Composer> composers;
  @JsonKey()
  @override
  final List<Composer> filteredComposers;
  @override
  final Composer? selectedComposer;

  @override
  String toString() {
    return 'AddPiece(composerLastNameController: $composerLastNameController, composerFirstNameController: $composerFirstNameController, composerDateOfBirthController: $composerDateOfBirthController, composerDateOfDeathController: $composerDateOfDeathController, composers: $composers, filteredComposers: $filteredComposers, selectedComposer: $selectedComposer)';
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
            const DeepCollectionEquality().equals(
                other.composerDateOfBirthController,
                composerDateOfBirthController) &&
            const DeepCollectionEquality().equals(
                other.composerDateOfDeathController,
                composerDateOfDeathController) &&
            const DeepCollectionEquality().equals(other.composers, composers) &&
            const DeepCollectionEquality()
                .equals(other.filteredComposers, filteredComposers) &&
            const DeepCollectionEquality()
                .equals(other.selectedComposer, selectedComposer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(composerLastNameController),
      const DeepCollectionEquality().hash(composerFirstNameController),
      const DeepCollectionEquality().hash(composerDateOfBirthController),
      const DeepCollectionEquality().hash(composerDateOfDeathController),
      const DeepCollectionEquality().hash(composers),
      const DeepCollectionEquality().hash(filteredComposers),
      const DeepCollectionEquality().hash(selectedComposer));

  @JsonKey(ignore: true)
  @override
  _$AddPieceCopyWith<_AddPiece> get copyWith =>
      __$AddPieceCopyWithImpl<_AddPiece>(this, _$identity);
}

abstract class _AddPiece implements AddPiece {
  const factory _AddPiece(
      {required TextEditingController composerLastNameController,
      required TextEditingController composerFirstNameController,
      required TextEditingController composerDateOfBirthController,
      required TextEditingController composerDateOfDeathController,
      List<Composer> composers,
      List<Composer> filteredComposers,
      Composer? selectedComposer}) = _$_AddPiece;

  @override
  TextEditingController get composerLastNameController;
  @override
  TextEditingController get composerFirstNameController;
  @override
  TextEditingController get composerDateOfBirthController;
  @override
  TextEditingController get composerDateOfDeathController;
  @override
  List<Composer> get composers;
  @override
  List<Composer> get filteredComposers;
  @override
  Composer? get selectedComposer;
  @override
  @JsonKey(ignore: true)
  _$AddPieceCopyWith<_AddPiece> get copyWith =>
      throw _privateConstructorUsedError;
}
