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
  _Edit edit(
      {FurtherEducation education,
      FurtherEducationEntry entry,
      int editEntryAtIndex}) {
    return _Edit(
      education: education,
      entry: entry,
      editEntryAtIndex: editEntryAtIndex,
    );
  }

// ignore: unused_element
  _UpdateCashedEntry updateCashedEntry(FurtherEducationEntry entry) {
    return _UpdateCashedEntry(
      entry,
    );
  }

// ignore: unused_element
  _SaveCashedEntry saveCashedEntry() {
    return const _SaveCashedEntry();
  }

// ignore: unused_element
  _Delete delete(
      FurtherEducation education, FurtherEducationEntry entryToDelete) {
    return _Delete(
      education,
      entryToDelete,
    );
  }

// ignore: unused_element
  _View view(FurtherEducation education) {
    return _View(
      education,
    );
  }
}

// ignore: unused_element
const $EducationEvent = _$EducationEventTearOff();

mixin _$EducationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
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
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
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
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
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
  $Res call(
      {FurtherEducation education,
      FurtherEducationEntry entry,
      int editEntryAtIndex});

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
    Object editEntryAtIndex = freezed,
  }) {
    return _then(_Edit(
      education: education == freezed
          ? _value.education
          : education as FurtherEducation,
      entry: entry == freezed ? _value.entry : entry as FurtherEducationEntry,
      editEntryAtIndex: editEntryAtIndex == freezed
          ? _value.editEntryAtIndex
          : editEntryAtIndex as int,
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
  const _$_Edit({this.education, this.entry, this.editEntryAtIndex});

  @override
  final FurtherEducation education;
  @override
  final FurtherEducationEntry entry;
  @override
  final int editEntryAtIndex;

  @override
  String toString() {
    return 'EducationEvent.edit(education: $education, entry: $entry, editEntryAtIndex: $editEntryAtIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edit &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)) &&
            (identical(other.editEntryAtIndex, editEntryAtIndex) ||
                const DeepCollectionEquality()
                    .equals(other.editEntryAtIndex, editEntryAtIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(entry) ^
      const DeepCollectionEquality().hash(editEntryAtIndex);

  @override
  _$EditCopyWith<_Edit> get copyWith =>
      __$EditCopyWithImpl<_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return edit(education, entry, editEntryAtIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edit != null) {
      return edit(education, entry, editEntryAtIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return edit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
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
  const factory _Edit(
      {FurtherEducation education,
      FurtherEducationEntry entry,
      int editEntryAtIndex}) = _$_Edit;

  FurtherEducation get education;
  FurtherEducationEntry get entry;
  int get editEntryAtIndex;
  _$EditCopyWith<_Edit> get copyWith;
}

abstract class _$UpdateCashedEntryCopyWith<$Res> {
  factory _$UpdateCashedEntryCopyWith(
          _UpdateCashedEntry value, $Res Function(_UpdateCashedEntry) then) =
      __$UpdateCashedEntryCopyWithImpl<$Res>;
  $Res call({FurtherEducationEntry entry});

  $FurtherEducationEntryCopyWith<$Res> get entry;
}

class __$UpdateCashedEntryCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res>
    implements _$UpdateCashedEntryCopyWith<$Res> {
  __$UpdateCashedEntryCopyWithImpl(
      _UpdateCashedEntry _value, $Res Function(_UpdateCashedEntry) _then)
      : super(_value, (v) => _then(v as _UpdateCashedEntry));

  @override
  _UpdateCashedEntry get _value => super._value as _UpdateCashedEntry;

  @override
  $Res call({
    Object entry = freezed,
  }) {
    return _then(_UpdateCashedEntry(
      entry == freezed ? _value.entry : entry as FurtherEducationEntry,
    ));
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

class _$_UpdateCashedEntry implements _UpdateCashedEntry {
  const _$_UpdateCashedEntry(this.entry) : assert(entry != null);

  @override
  final FurtherEducationEntry entry;

  @override
  String toString() {
    return 'EducationEvent.updateCashedEntry(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCashedEntry &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entry);

  @override
  _$UpdateCashedEntryCopyWith<_UpdateCashedEntry> get copyWith =>
      __$UpdateCashedEntryCopyWithImpl<_UpdateCashedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return updateCashedEntry(entry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCashedEntry != null) {
      return updateCashedEntry(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return updateCashedEntry(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCashedEntry != null) {
      return updateCashedEntry(this);
    }
    return orElse();
  }
}

abstract class _UpdateCashedEntry implements EducationEvent {
  const factory _UpdateCashedEntry(FurtherEducationEntry entry) =
      _$_UpdateCashedEntry;

  FurtherEducationEntry get entry;
  _$UpdateCashedEntryCopyWith<_UpdateCashedEntry> get copyWith;
}

abstract class _$SaveCashedEntryCopyWith<$Res> {
  factory _$SaveCashedEntryCopyWith(
          _SaveCashedEntry value, $Res Function(_SaveCashedEntry) then) =
      __$SaveCashedEntryCopyWithImpl<$Res>;
}

class __$SaveCashedEntryCopyWithImpl<$Res>
    extends _$EducationEventCopyWithImpl<$Res>
    implements _$SaveCashedEntryCopyWith<$Res> {
  __$SaveCashedEntryCopyWithImpl(
      _SaveCashedEntry _value, $Res Function(_SaveCashedEntry) _then)
      : super(_value, (v) => _then(v as _SaveCashedEntry));

  @override
  _SaveCashedEntry get _value => super._value as _SaveCashedEntry;
}

class _$_SaveCashedEntry implements _SaveCashedEntry {
  const _$_SaveCashedEntry();

  @override
  String toString() {
    return 'EducationEvent.saveCashedEntry()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveCashedEntry);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return saveCashedEntry();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCashedEntry != null) {
      return saveCashedEntry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return saveCashedEntry(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCashedEntry != null) {
      return saveCashedEntry(this);
    }
    return orElse();
  }
}

abstract class _SaveCashedEntry implements EducationEvent {
  const factory _SaveCashedEntry() = _$_SaveCashedEntry;
}

abstract class _$DeleteCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  $Res call({FurtherEducation education, FurtherEducationEntry entryToDelete});

  $FurtherEducationCopyWith<$Res> get education;
  $FurtherEducationEntryCopyWith<$Res> get entryToDelete;
}

class __$DeleteCopyWithImpl<$Res> extends _$EducationEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object education = freezed,
    Object entryToDelete = freezed,
  }) {
    return _then(_Delete(
      education == freezed ? _value.education : education as FurtherEducation,
      entryToDelete == freezed
          ? _value.entryToDelete
          : entryToDelete as FurtherEducationEntry,
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
  $FurtherEducationEntryCopyWith<$Res> get entryToDelete {
    if (_value.entryToDelete == null) {
      return null;
    }
    return $FurtherEducationEntryCopyWith<$Res>(_value.entryToDelete, (value) {
      return _then(_value.copyWith(entryToDelete: value));
    });
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.education, this.entryToDelete)
      : assert(education != null),
        assert(entryToDelete != null);

  @override
  final FurtherEducation education;
  @override
  final FurtherEducationEntry entryToDelete;

  @override
  String toString() {
    return 'EducationEvent.delete(education: $education, entryToDelete: $entryToDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.entryToDelete, entryToDelete) ||
                const DeepCollectionEquality()
                    .equals(other.entryToDelete, entryToDelete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(entryToDelete);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return delete(education, entryToDelete);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(education, entryToDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
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
  const factory _Delete(
          FurtherEducation education, FurtherEducationEntry entryToDelete) =
      _$_Delete;

  FurtherEducation get education;
  FurtherEducationEntry get entryToDelete;
  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$ViewCopyWith<$Res> {
  factory _$ViewCopyWith(_View value, $Res Function(_View) then) =
      __$ViewCopyWithImpl<$Res>;
  $Res call({FurtherEducation education});

  $FurtherEducationCopyWith<$Res> get education;
}

class __$ViewCopyWithImpl<$Res> extends _$EducationEventCopyWithImpl<$Res>
    implements _$ViewCopyWith<$Res> {
  __$ViewCopyWithImpl(_View _value, $Res Function(_View) _then)
      : super(_value, (v) => _then(v as _View));

  @override
  _View get _value => super._value as _View;

  @override
  $Res call({
    Object education = freezed,
  }) {
    return _then(_View(
      education == freezed ? _value.education : education as FurtherEducation,
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
}

class _$_View implements _View {
  const _$_View(this.education) : assert(education != null);

  @override
  final FurtherEducation education;

  @override
  String toString() {
    return 'EducationEvent.view(education: $education)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _View &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(education);

  @override
  _$ViewCopyWith<_View> get copyWith =>
      __$ViewCopyWithImpl<_View>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required
        Result edit(FurtherEducation education, FurtherEducationEntry entry,
            int editEntryAtIndex),
    @required Result updateCashedEntry(FurtherEducationEntry entry),
    @required Result saveCashedEntry(),
    @required
        Result delete(
            FurtherEducation education, FurtherEducationEntry entryToDelete),
    @required Result view(FurtherEducation education),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return view(education);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(FurtherEducation education, FurtherEducationEntry entry,
        int editEntryAtIndex),
    Result updateCashedEntry(FurtherEducationEntry entry),
    Result saveCashedEntry(),
    Result delete(
        FurtherEducation education, FurtherEducationEntry entryToDelete),
    Result view(FurtherEducation education),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(education);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result updateCashedEntry(_UpdateCashedEntry value),
    @required Result saveCashedEntry(_SaveCashedEntry value),
    @required Result delete(_Delete value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(updateCashedEntry != null);
    assert(saveCashedEntry != null);
    assert(delete != null);
    assert(view != null);
    return view(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result updateCashedEntry(_UpdateCashedEntry value),
    Result saveCashedEntry(_SaveCashedEntry value),
    Result delete(_Delete value),
    Result view(_View value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class _View implements EducationEvent {
  const factory _View(FurtherEducation education) = _$_View;

  FurtherEducation get education;
  _$ViewCopyWith<_View> get copyWith;
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
  _FinishedLoading finishedLoading({FurtherEducation education}) {
    return _FinishedLoading(
      education: education,
    );
  }

// ignore: unused_element
  _Viewing viewing(
      {FurtherEducation education, bool failed, RepoFailure failure}) {
    return _Viewing(
      education: education,
      failed: failed,
      failure: failure,
    );
  }

// ignore: unused_element
  _Editing editing(
      {@required FurtherEducation education,
      FurtherEducationEntry entryToEdit,
      int indexOfEntry,
      bool failed,
      RepoFailure failure}) {
    return _Editing(
      education: education,
      entryToEdit: entryToEdit,
      indexOfEntry: indexOfEntry,
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result finishedLoading(_FinishedLoading value),
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
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
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(_FinishedLoading value),
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
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
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(_FinishedLoading value),
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

abstract class _$FinishedLoadingCopyWith<$Res> {
  factory _$FinishedLoadingCopyWith(
          _FinishedLoading value, $Res Function(_FinishedLoading) then) =
      __$FinishedLoadingCopyWithImpl<$Res>;
  $Res call({FurtherEducation education});

  $FurtherEducationCopyWith<$Res> get education;
}

class __$FinishedLoadingCopyWithImpl<$Res>
    extends _$EducationStateCopyWithImpl<$Res>
    implements _$FinishedLoadingCopyWith<$Res> {
  __$FinishedLoadingCopyWithImpl(
      _FinishedLoading _value, $Res Function(_FinishedLoading) _then)
      : super(_value, (v) => _then(v as _FinishedLoading));

  @override
  _FinishedLoading get _value => super._value as _FinishedLoading;

  @override
  $Res call({
    Object education = freezed,
  }) {
    return _then(_FinishedLoading(
      education: education == freezed
          ? _value.education
          : education as FurtherEducation,
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
}

class _$_FinishedLoading implements _FinishedLoading {
  const _$_FinishedLoading({this.education});

  @override
  final FurtherEducation education;

  @override
  String toString() {
    return 'EducationState.finishedLoading(education: $education)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishedLoading &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(education);

  @override
  _$FinishedLoadingCopyWith<_FinishedLoading> get copyWith =>
      __$FinishedLoadingCopyWithImpl<_FinishedLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return finishedLoading(education);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishedLoading != null) {
      return finishedLoading(education);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return finishedLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result finishedLoading(_FinishedLoading value),
    Result viewing(_Viewing value),
    Result editing(_Editing value),
    Result deleting(_Deleting value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishedLoading != null) {
      return finishedLoading(this);
    }
    return orElse();
  }
}

abstract class _FinishedLoading implements EducationState {
  const factory _FinishedLoading({FurtherEducation education}) =
      _$_FinishedLoading;

  FurtherEducation get education;
  _$FinishedLoadingCopyWith<_FinishedLoading> get copyWith;
}

abstract class _$ViewingCopyWith<$Res> {
  factory _$ViewingCopyWith(_Viewing value, $Res Function(_Viewing) then) =
      __$ViewingCopyWithImpl<$Res>;
  $Res call({FurtherEducation education, bool failed, RepoFailure failure});

  $FurtherEducationCopyWith<$Res> get education;
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
    Object education = freezed,
    Object failed = freezed,
    Object failure = freezed,
  }) {
    return _then(_Viewing(
      education: education == freezed
          ? _value.education
          : education as FurtherEducation,
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
  const _$_Viewing({this.education, this.failed, this.failure});

  @override
  final FurtherEducation education;
  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'EducationState.viewing(education: $education, failed: $failed, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Viewing &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(education) ^
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return viewing(education, failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewing != null) {
      return viewing(education, failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(_FinishedLoading value),
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
  const factory _Viewing(
      {FurtherEducation education,
      bool failed,
      RepoFailure failure}) = _$_Viewing;

  FurtherEducation get education;
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
      int indexOfEntry,
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
    Object indexOfEntry = freezed,
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
      indexOfEntry:
          indexOfEntry == freezed ? _value.indexOfEntry : indexOfEntry as int,
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
      {@required this.education,
      this.entryToEdit,
      this.indexOfEntry,
      this.failed,
      this.failure})
      : assert(education != null);

  @override
  final FurtherEducation education;
  @override
  final FurtherEducationEntry entryToEdit;
  @override
  final int indexOfEntry;
  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'EducationState.editing(education: $education, entryToEdit: $entryToEdit, indexOfEntry: $indexOfEntry, failed: $failed, failure: $failure)';
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
            (identical(other.indexOfEntry, indexOfEntry) ||
                const DeepCollectionEquality()
                    .equals(other.indexOfEntry, indexOfEntry)) &&
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
      const DeepCollectionEquality().hash(indexOfEntry) ^
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
    assert(viewing != null);
    assert(editing != null);
    assert(deleting != null);
    assert(saving != null);
    return editing(education, entryToEdit, indexOfEntry, failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
    Result deleting(),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editing != null) {
      return editing(education, entryToEdit, indexOfEntry, failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(_FinishedLoading value),
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
      int indexOfEntry,
      bool failed,
      RepoFailure failure}) = _$_Editing;

  FurtherEducation get education;
  FurtherEducationEntry get entryToEdit;
  int get indexOfEntry;
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
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
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(_FinishedLoading value),
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
    @required Result finishedLoading(FurtherEducation education),
    @required
        Result viewing(
            FurtherEducation education, bool failed, RepoFailure failure),
    @required
        Result editing(
            FurtherEducation education,
            FurtherEducationEntry entryToEdit,
            int indexOfEntry,
            bool failed,
            RepoFailure failure),
    @required Result deleting(),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(FurtherEducation education),
    Result viewing(
        FurtherEducation education, bool failed, RepoFailure failure),
    Result editing(
        FurtherEducation education,
        FurtherEducationEntry entryToEdit,
        int indexOfEntry,
        bool failed,
        RepoFailure failure),
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
    @required Result finishedLoading(_FinishedLoading value),
    @required Result viewing(_Viewing value),
    @required Result editing(_Editing value),
    @required Result deleting(_Deleting value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(finishedLoading != null);
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
    Result finishedLoading(_FinishedLoading value),
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
