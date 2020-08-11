// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'education_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EducationEventTearOff {
  const _$EducationEventTearOff();

// ignore: unused_element
  _Load load() {
    return const _Load();
  }

// ignore: unused_element
  _Edit edit(FurtherEducation education, [FurtherEducationEntry entry]) {
    return _Edit(
      education,
      entry,
    );
  }

// ignore: unused_element
  _Save save(FurtherEducation education, FurtherEducationEntry newEntry) {
    return _Save(
      education,
      newEntry,
    );
  }

// ignore: unused_element
  _Delete delete() {
    return const _Delete();
  }
}

// ignore: unused_element
const $EducationEvent = _$EducationEventTearOff();

mixin _$EducationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry),
    @required
        Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    @required Result delete(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry),
    Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    Result delete(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result delete(_Delete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result delete(_Delete value),
    @required Result orElse(),
  });
}

abstract class $EducationEventCopyWith<$Res> {
  factory $EducationEventCopyWith(
          EducationEvent value, $Res Function(EducationEvent) then) =
      _$EducationEventCopyWithImpl<$Res>;
}

class _$EducationEventCopyWithImpl<$Res>
    implements $EducationEventCopyWith<$Res> {
  _$EducationEventCopyWithImpl(this._value, this._then);

  final EducationEvent _value;
  // ignore: unused_field
  final $Res Function(EducationEvent) _then;
}

abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

class __$LoadCopyWithImpl<$Res> extends _$EducationEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'EducationEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry),
    @required
        Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    @required Result delete(),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry),
    Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements EducationEvent {
  const factory _Load() = _$_Load;
}

abstract class _$EditCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) then) =
      __$EditCopyWithImpl<$Res>;
  $Res call({FurtherEducation education, FurtherEducationEntry entry});

  $FurtherEducationCopyWith<$Res> get education;
  $FurtherEducationEntryCopyWith<$Res> get entry;
}

class __$EditCopyWithImpl<$Res> extends _$EducationEventCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(_Edit _value, $Res Function(_Edit) _then)
      : super(_value, (v) => _then(v as _Edit));

  @override
  _Edit get _value => super._value as _Edit;

  @override
  $Res call({
    Object education = freezed,
    Object entry = freezed,
  }) {
    return _then(_Edit(
      education == freezed ? _value.education : education as FurtherEducation,
      entry == freezed ? _value.entry : entry as FurtherEducationEntry,
    ));
  }

  @override
  $FurtherEducationCopyWith<$Res> get education {
    if (_value.education == null) {
      return null;
    }
    return $FurtherEducationCopyWith<$Res>(_value.education, (value) {
      return _then(_value.copyWith(education: value));
    });
  }

  @override
  $FurtherEducationEntryCopyWith<$Res> get entry {
    if (_value.entry == null) {
      return null;
    }
    return $FurtherEducationEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

class _$_Edit implements _Edit {
  const _$_Edit(this.education, [this.entry]) : assert(education != null);

  @override
  final FurtherEducation education;
  @override
  final FurtherEducationEntry entry;

  @override
  String toString() {
    return 'EducationEvent.edit(education: $education, entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edit &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(entry);

  @override
  _$EditCopyWith<_Edit> get copyWith =>
      __$EditCopyWithImpl<_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry),
    @required
        Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    @required Result delete(),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return edit(education, entry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry),
    Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edit != null) {
      return edit(education, entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return edit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements EducationEvent {
  const factory _Edit(FurtherEducation education,
      [FurtherEducationEntry entry]) = _$_Edit;

  FurtherEducation get education;
  FurtherEducationEntry get entry;
  _$EditCopyWith<_Edit> get copyWith;
}

abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({FurtherEducation education, FurtherEducationEntry newEntry});

  $FurtherEducationCopyWith<$Res> get education;
  $FurtherEducationEntryCopyWith<$Res> get newEntry;
}

class __$SaveCopyWithImpl<$Res> extends _$EducationEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object education = freezed,
    Object newEntry = freezed,
  }) {
    return _then(_Save(
      education == freezed ? _value.education : education as FurtherEducation,
      newEntry == freezed ? _value.newEntry : newEntry as FurtherEducationEntry,
    ));
  }

  @override
  $FurtherEducationCopyWith<$Res> get education {
    if (_value.education == null) {
      return null;
    }
    return $FurtherEducationCopyWith<$Res>(_value.education, (value) {
      return _then(_value.copyWith(education: value));
    });
  }

  @override
  $FurtherEducationEntryCopyWith<$Res> get newEntry {
    if (_value.newEntry == null) {
      return null;
    }
    return $FurtherEducationEntryCopyWith<$Res>(_value.newEntry, (value) {
      return _then(_value.copyWith(newEntry: value));
    });
  }
}

class _$_Save implements _Save {
  const _$_Save(this.education, this.newEntry)
      : assert(education != null),
        assert(newEntry != null);

  @override
  final FurtherEducation education;
  @override
  final FurtherEducationEntry newEntry;

  @override
  String toString() {
    return 'EducationEvent.save(education: $education, newEntry: $newEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.newEntry, newEntry) ||
                const DeepCollectionEquality()
                    .equals(other.newEntry, newEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(newEntry);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry),
    @required
        Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    @required Result delete(),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return save(education, newEntry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry),
    Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(education, newEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements EducationEvent {
  const factory _Save(
      FurtherEducation education, FurtherEducationEntry newEntry) = _$_Save;

  FurtherEducation get education;
  FurtherEducationEntry get newEntry;
  _$SaveCopyWith<_Save> get copyWith;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
}

class __$DeleteCopyWithImpl<$Res> extends _$EducationEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;
}

class _$_Delete implements _Delete {
  const _$_Delete();

  @override
  String toString() {
    return 'EducationEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry),
    @required
        Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    @required Result delete(),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return delete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry),
    Result save(FurtherEducation education, FurtherEducationEntry newEntry),
    Result delete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result delete(_Delete value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements EducationEvent {
  const factory _Delete() = _$_Delete;
}

class _$EducationStateTearOff {
  const _$EducationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Viewing viewing({bool failed, RepoFailure failure}) {
    return _Viewing(
      failed: failed,
      failure: failure,
    );
  }

// ignore: unused_element
  _Editing editing(
      {@required FurtherEducation education,
      FurtherEducationEntry entryToEdit,
      bool failed,
      RepoFailure failure}) {
    return _Editing(
      education: education,
      entryToEdit: entryToEdit,
      failed: failed,
      failure: failure,
    );
  }

// ignore: unused_element
  _Deleting deleting() {
    return const _Deleting();
  }

// ignore: unused_element
  _Saving saving() {
    return const _Saving();
  }
}

// ignore: unused_element
const $EducationState = _$EducationStateTearOff();

mixin _$EducationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  });
}

abstract class $EducationStateCopyWith<$Res> {
  factory $EducationStateCopyWith(
          EducationState value, $Res Function(EducationState) then) =
      _$EducationStateCopyWithImpl<$Res>;
}

class _$EducationStateCopyWithImpl<$Res>
    implements $EducationStateCopyWith<$Res> {
  _$EducationStateCopyWithImpl(this._value, this._then);

  final EducationState _value;
  // ignore: unused_field
  final $Res Function(EducationState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$EducationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EducationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EducationState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$EducationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'EducationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EducationState {
  const factory _Loading() = _$_Loading;
}

abstract class _$ViewingCopyWith<$Res> {
  factory _$ViewingCopyWith(_Viewing value, $Res Function(_Viewing) then) =
      __$ViewingCopyWithImpl<$Res>;
  $Res call({bool failed, RepoFailure failure});

  $RepoFailureCopyWith<$Res> get failure;
}

class __$ViewingCopyWithImpl<$Res> extends _$EducationStateCopyWithImpl<$Res>
    implements _$ViewingCopyWith<$Res> {
  __$ViewingCopyWithImpl(_Viewing _value, $Res Function(_Viewing) _then)
      : super(_value, (v) => _then(v as _Viewing));

  @override
  _Viewing get _value => super._value as _Viewing;

  @override
  $Res call({
    Object failed = freezed,
    Object failure = freezed,
  }) {
    return _then(_Viewing(
      failed: failed == freezed ? _value.failed : failed as bool,
      failure: failure == freezed ? _value.failure : failure as RepoFailure,
    ));
  }

  @override
  $RepoFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $RepoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_Viewing implements _Viewing {
  const _$_Viewing({this.failed, this.failure});

  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'EducationState.viewing(failed: $failed, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Viewing &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failed) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$ViewingCopyWith<_Viewing> get copyWith =>
      __$ViewingCopyWithImpl<_Viewing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return viewing(failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewing != null) {
      return viewing(failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return viewing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewing != null) {
      return viewing(this);
    }
    return orElse();
  }
}

abstract class _Viewing implements EducationState {
  const factory _Viewing({bool failed, RepoFailure failure}) = _$_Viewing;

  bool get failed;
  RepoFailure get failure;
  _$ViewingCopyWith<_Viewing> get copyWith;
}

abstract class _$EditingCopyWith<$Res> {
  factory _$EditingCopyWith(_Editing value, $Res Function(_Editing) then) =
      __$EditingCopyWithImpl<$Res>;
  $Res call(
      {FurtherEducation education,
      FurtherEducationEntry entryToEdit,
      bool failed,
      RepoFailure failure});

  $FurtherEducationCopyWith<$Res> get education;
  $FurtherEducationEntryCopyWith<$Res> get entryToEdit;
  $RepoFailureCopyWith<$Res> get failure;
}

class __$EditingCopyWithImpl<$Res> extends _$EducationStateCopyWithImpl<$Res>
    implements _$EditingCopyWith<$Res> {
  __$EditingCopyWithImpl(_Editing _value, $Res Function(_Editing) _then)
      : super(_value, (v) => _then(v as _Editing));

  @override
  _Editing get _value => super._value as _Editing;

  @override
  $Res call({
    Object education = freezed,
    Object entryToEdit = freezed,
    Object failed = freezed,
    Object failure = freezed,
  }) {
    return _then(_Editing(
      education: education == freezed
          ? _value.education
          : education as FurtherEducation,
      entryToEdit: entryToEdit == freezed
          ? _value.entryToEdit
          : entryToEdit as FurtherEducationEntry,
      failed: failed == freezed ? _value.failed : failed as bool,
      failure: failure == freezed ? _value.failure : failure as RepoFailure,
    ));
  }

  @override
  $FurtherEducationCopyWith<$Res> get education {
    if (_value.education == null) {
      return null;
    }
    return $FurtherEducationCopyWith<$Res>(_value.education, (value) {
      return _then(_value.copyWith(education: value));
    });
  }

  @override
  $FurtherEducationEntryCopyWith<$Res> get entryToEdit {
    if (_value.entryToEdit == null) {
      return null;
    }
    return $FurtherEducationEntryCopyWith<$Res>(_value.entryToEdit, (value) {
      return _then(_value.copyWith(entryToEdit: value));
    });
  }

  @override
  $RepoFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $RepoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_Editing implements _Editing {
  const _$_Editing(
      {@required this.education, this.entryToEdit, this.failed, this.failure})
      : assert(education != null);

  @override
  final FurtherEducation education;
  @override
  final FurtherEducationEntry entryToEdit;
  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'EducationState.editing(education: $education, entryToEdit: $entryToEdit, failed: $failed, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Editing &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.entryToEdit, entryToEdit) ||
                const DeepCollectionEquality()
                    .equals(other.entryToEdit, entryToEdit)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(entryToEdit) ^
      const DeepCollectionEquality().hash(failed) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$EditingCopyWith<_Editing> get copyWith =>
      __$EditingCopyWithImpl<_Editing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return editing(education, entryToEdit, failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editing != null) {
      return editing(education, entryToEdit, failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return editing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements EducationState {
  const factory _Editing(
      {@required FurtherEducation education,
      FurtherEducationEntry entryToEdit,
      bool failed,
      RepoFailure failure}) = _$_Editing;

  FurtherEducation get education;
  FurtherEducationEntry get entryToEdit;
  bool get failed;
  RepoFailure get failure;
  _$EditingCopyWith<_Editing> get copyWith;
}

abstract class _$DeletingCopyWith<$Res> {
  factory _$DeletingCopyWith(_Deleting value, $Res Function(_Deleting) then) =
      __$DeletingCopyWithImpl<$Res>;
}

class __$DeletingCopyWithImpl<$Res> extends _$EducationStateCopyWithImpl<$Res>
    implements _$DeletingCopyWith<$Res> {
  __$DeletingCopyWithImpl(_Deleting _value, $Res Function(_Deleting) _then)
      : super(_value, (v) => _then(v as _Deleting));

  @override
  _Deleting get _value => super._value as _Deleting;
}

class _$_Deleting implements _Deleting {
  const _$_Deleting();

  @override
  String toString() {
    return 'EducationState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return deleting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements EducationState {
  const factory _Deleting() = _$_Deleting;
}

abstract class _$SavingCopyWith<$Res> {
  factory _$SavingCopyWith(_Saving value, $Res Function(_Saving) then) =
      __$SavingCopyWithImpl<$Res>;
}

class __$SavingCopyWithImpl<$Res> extends _$EducationStateCopyWithImpl<$Res>
    implements _$SavingCopyWith<$Res> {
  __$SavingCopyWithImpl(_Saving _value, $Res Function(_Saving) _then)
      : super(_value, (v) => _then(v as _Saving));

  @override
  _Saving get _value => super._value as _Saving;
}

class _$_Saving implements _Saving {
  const _$_Saving();

  @override
  String toString() {
    return 'EducationState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result viewing(bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return saving();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result viewing(bool failed, RepoFailure failure),
    Result editing(FurtherEducation education,
        FurtherEducationEntry entryToEdit, bool failed, RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return saving(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements EducationState {
  const factory _Saving() = _$_Saving;
}
