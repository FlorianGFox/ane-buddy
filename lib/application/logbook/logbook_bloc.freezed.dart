// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'logbook_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LogbookEventTearOff {
  const _$LogbookEventTearOff();

// ignore: unused_element
  _Load load() {
    return const _Load();
  }

// ignore: unused_element
  _Edit edit(Logbook logbook, LogbookEntry entry) {
    return _Edit(
      logbook,
      entry,
    );
  }

// ignore: unused_element
  _Save save(Logbook logbook, LogbookEntry entry) {
    return _Save(
      logbook,
      entry,
    );
  }

// ignore: unused_element
  _View view(Logbook logbook) {
    return _View(
      logbook,
    );
  }
}

// ignore: unused_element
const $LogbookEvent = _$LogbookEventTearOff();

mixin _$LogbookEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result edit(Logbook logbook, LogbookEntry entry),
    @required Result save(Logbook logbook, LogbookEntry entry),
    @required Result view(Logbook logbook),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(Logbook logbook, LogbookEntry entry),
    Result save(Logbook logbook, LogbookEntry entry),
    Result view(Logbook logbook),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result view(_View value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result view(_View value),
    @required Result orElse(),
  });
}

abstract class $LogbookEventCopyWith<$Res> {
  factory $LogbookEventCopyWith(
          LogbookEvent value, $Res Function(LogbookEvent) then) =
      _$LogbookEventCopyWithImpl<$Res>;
}

class _$LogbookEventCopyWithImpl<$Res> implements $LogbookEventCopyWith<$Res> {
  _$LogbookEventCopyWithImpl(this._value, this._then);

  final LogbookEvent _value;
  // ignore: unused_field
  final $Res Function(LogbookEvent) _then;
}

abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

class __$LoadCopyWithImpl<$Res> extends _$LogbookEventCopyWithImpl<$Res>
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
    return 'LogbookEvent.load()';
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
    @required Result edit(Logbook logbook, LogbookEntry entry),
    @required Result save(Logbook logbook, LogbookEntry entry),
    @required Result view(Logbook logbook),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(Logbook logbook, LogbookEntry entry),
    Result save(Logbook logbook, LogbookEntry entry),
    Result view(Logbook logbook),
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
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
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

abstract class _Load implements LogbookEvent {
  const factory _Load() = _$_Load;
}

abstract class _$EditCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) then) =
      __$EditCopyWithImpl<$Res>;
  $Res call({Logbook logbook, LogbookEntry entry});

  $LogbookCopyWith<$Res> get logbook;
  $LogbookEntryCopyWith<$Res> get entry;
}

class __$EditCopyWithImpl<$Res> extends _$LogbookEventCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(_Edit _value, $Res Function(_Edit) _then)
      : super(_value, (v) => _then(v as _Edit));

  @override
  _Edit get _value => super._value as _Edit;

  @override
  $Res call({
    Object logbook = freezed,
    Object entry = freezed,
  }) {
    return _then(_Edit(
      logbook == freezed ? _value.logbook : logbook as Logbook,
      entry == freezed ? _value.entry : entry as LogbookEntry,
    ));
  }

  @override
  $LogbookCopyWith<$Res> get logbook {
    if (_value.logbook == null) {
      return null;
    }
    return $LogbookCopyWith<$Res>(_value.logbook, (value) {
      return _then(_value.copyWith(logbook: value));
    });
  }

  @override
  $LogbookEntryCopyWith<$Res> get entry {
    if (_value.entry == null) {
      return null;
    }
    return $LogbookEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

class _$_Edit implements _Edit {
  const _$_Edit(this.logbook, this.entry)
      : assert(logbook != null),
        assert(entry != null);

  @override
  final Logbook logbook;
  @override
  final LogbookEntry entry;

  @override
  String toString() {
    return 'LogbookEvent.edit(logbook: $logbook, entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edit &&
            (identical(other.logbook, logbook) ||
                const DeepCollectionEquality()
                    .equals(other.logbook, logbook)) &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logbook) ^
      const DeepCollectionEquality().hash(entry);

  @override
  _$EditCopyWith<_Edit> get copyWith =>
      __$EditCopyWithImpl<_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result edit(Logbook logbook, LogbookEntry entry),
    @required Result save(Logbook logbook, LogbookEntry entry),
    @required Result view(Logbook logbook),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return edit(logbook, entry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(Logbook logbook, LogbookEntry entry),
    Result save(Logbook logbook, LogbookEntry entry),
    Result view(Logbook logbook),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edit != null) {
      return edit(logbook, entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return edit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
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

abstract class _Edit implements LogbookEvent {
  const factory _Edit(Logbook logbook, LogbookEntry entry) = _$_Edit;

  Logbook get logbook;
  LogbookEntry get entry;
  _$EditCopyWith<_Edit> get copyWith;
}

abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({Logbook logbook, LogbookEntry entry});

  $LogbookCopyWith<$Res> get logbook;
  $LogbookEntryCopyWith<$Res> get entry;
}

class __$SaveCopyWithImpl<$Res> extends _$LogbookEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object logbook = freezed,
    Object entry = freezed,
  }) {
    return _then(_Save(
      logbook == freezed ? _value.logbook : logbook as Logbook,
      entry == freezed ? _value.entry : entry as LogbookEntry,
    ));
  }

  @override
  $LogbookCopyWith<$Res> get logbook {
    if (_value.logbook == null) {
      return null;
    }
    return $LogbookCopyWith<$Res>(_value.logbook, (value) {
      return _then(_value.copyWith(logbook: value));
    });
  }

  @override
  $LogbookEntryCopyWith<$Res> get entry {
    if (_value.entry == null) {
      return null;
    }
    return $LogbookEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

class _$_Save implements _Save {
  const _$_Save(this.logbook, this.entry)
      : assert(logbook != null),
        assert(entry != null);

  @override
  final Logbook logbook;
  @override
  final LogbookEntry entry;

  @override
  String toString() {
    return 'LogbookEvent.save(logbook: $logbook, entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.logbook, logbook) ||
                const DeepCollectionEquality()
                    .equals(other.logbook, logbook)) &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logbook) ^
      const DeepCollectionEquality().hash(entry);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result edit(Logbook logbook, LogbookEntry entry),
    @required Result save(Logbook logbook, LogbookEntry entry),
    @required Result view(Logbook logbook),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return save(logbook, entry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(Logbook logbook, LogbookEntry entry),
    Result save(Logbook logbook, LogbookEntry entry),
    Result view(Logbook logbook),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(logbook, entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
    Result view(_View value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements LogbookEvent {
  const factory _Save(Logbook logbook, LogbookEntry entry) = _$_Save;

  Logbook get logbook;
  LogbookEntry get entry;
  _$SaveCopyWith<_Save> get copyWith;
}

abstract class _$ViewCopyWith<$Res> {
  factory _$ViewCopyWith(_View value, $Res Function(_View) then) =
      __$ViewCopyWithImpl<$Res>;
  $Res call({Logbook logbook});

  $LogbookCopyWith<$Res> get logbook;
}

class __$ViewCopyWithImpl<$Res> extends _$LogbookEventCopyWithImpl<$Res>
    implements _$ViewCopyWith<$Res> {
  __$ViewCopyWithImpl(_View _value, $Res Function(_View) _then)
      : super(_value, (v) => _then(v as _View));

  @override
  _View get _value => super._value as _View;

  @override
  $Res call({
    Object logbook = freezed,
  }) {
    return _then(_View(
      logbook == freezed ? _value.logbook : logbook as Logbook,
    ));
  }

  @override
  $LogbookCopyWith<$Res> get logbook {
    if (_value.logbook == null) {
      return null;
    }
    return $LogbookCopyWith<$Res>(_value.logbook, (value) {
      return _then(_value.copyWith(logbook: value));
    });
  }
}

class _$_View implements _View {
  const _$_View(this.logbook) : assert(logbook != null);

  @override
  final Logbook logbook;

  @override
  String toString() {
    return 'LogbookEvent.view(logbook: $logbook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _View &&
            (identical(other.logbook, logbook) ||
                const DeepCollectionEquality().equals(other.logbook, logbook)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(logbook);

  @override
  _$ViewCopyWith<_View> get copyWith =>
      __$ViewCopyWithImpl<_View>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result edit(Logbook logbook, LogbookEntry entry),
    @required Result save(Logbook logbook, LogbookEntry entry),
    @required Result view(Logbook logbook),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return view(logbook);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result edit(Logbook logbook, LogbookEntry entry),
    Result save(Logbook logbook, LogbookEntry entry),
    Result view(Logbook logbook),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (view != null) {
      return view(logbook);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result edit(_Edit value),
    @required Result save(_Save value),
    @required Result view(_View value),
  }) {
    assert(load != null);
    assert(edit != null);
    assert(save != null);
    assert(view != null);
    return view(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result edit(_Edit value),
    Result save(_Save value),
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

abstract class _View implements LogbookEvent {
  const factory _View(Logbook logbook) = _$_View;

  Logbook get logbook;
  _$ViewCopyWith<_View> get copyWith;
}

class _$LogbookStateTearOff {
  const _$LogbookStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Viewing viewing({Logbook logbook, bool failed, RepoFailure failure}) {
    return _Viewing(
      logbook: logbook,
      failed: failed,
      failure: failure,
    );
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Saving saving() {
    return const _Saving();
  }

// ignore: unused_element
  _Editing editing(
      {Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure}) {
    return _Editing(
      logbook: logbook,
      entry: entry,
      failed: failed,
      failure: failure,
    );
  }
}

// ignore: unused_element
const $LogbookState = _$LogbookStateTearOff();

mixin _$LogbookState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    @required Result loading(),
    @required Result saving(),
    @required
        Result editing(Logbook logbook, LogbookEntry entry, bool failed,
            RepoFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    Result loading(),
    Result saving(),
    Result editing(
        Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result viewing(_Viewing value),
    @required Result loading(_Loading value),
    @required Result saving(_Saving value),
    @required Result editing(_Editing value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result viewing(_Viewing value),
    Result loading(_Loading value),
    Result saving(_Saving value),
    Result editing(_Editing value),
    @required Result orElse(),
  });
}

abstract class $LogbookStateCopyWith<$Res> {
  factory $LogbookStateCopyWith(
          LogbookState value, $Res Function(LogbookState) then) =
      _$LogbookStateCopyWithImpl<$Res>;
}

class _$LogbookStateCopyWithImpl<$Res> implements $LogbookStateCopyWith<$Res> {
  _$LogbookStateCopyWithImpl(this._value, this._then);

  final LogbookState _value;
  // ignore: unused_field
  final $Res Function(LogbookState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$LogbookStateCopyWithImpl<$Res>
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
    return 'LogbookState.initial()';
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
    @required Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    @required Result loading(),
    @required Result saving(),
    @required
        Result editing(Logbook logbook, LogbookEntry entry, bool failed,
            RepoFailure failure),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    Result loading(),
    Result saving(),
    Result editing(
        Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure),
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
    @required Result viewing(_Viewing value),
    @required Result loading(_Loading value),
    @required Result saving(_Saving value),
    @required Result editing(_Editing value),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result viewing(_Viewing value),
    Result loading(_Loading value),
    Result saving(_Saving value),
    Result editing(_Editing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LogbookState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ViewingCopyWith<$Res> {
  factory _$ViewingCopyWith(_Viewing value, $Res Function(_Viewing) then) =
      __$ViewingCopyWithImpl<$Res>;
  $Res call({Logbook logbook, bool failed, RepoFailure failure});

  $LogbookCopyWith<$Res> get logbook;
  $RepoFailureCopyWith<$Res> get failure;
}

class __$ViewingCopyWithImpl<$Res> extends _$LogbookStateCopyWithImpl<$Res>
    implements _$ViewingCopyWith<$Res> {
  __$ViewingCopyWithImpl(_Viewing _value, $Res Function(_Viewing) _then)
      : super(_value, (v) => _then(v as _Viewing));

  @override
  _Viewing get _value => super._value as _Viewing;

  @override
  $Res call({
    Object logbook = freezed,
    Object failed = freezed,
    Object failure = freezed,
  }) {
    return _then(_Viewing(
      logbook: logbook == freezed ? _value.logbook : logbook as Logbook,
      failed: failed == freezed ? _value.failed : failed as bool,
      failure: failure == freezed ? _value.failure : failure as RepoFailure,
    ));
  }

  @override
  $LogbookCopyWith<$Res> get logbook {
    if (_value.logbook == null) {
      return null;
    }
    return $LogbookCopyWith<$Res>(_value.logbook, (value) {
      return _then(_value.copyWith(logbook: value));
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
  const _$_Viewing({this.logbook, this.failed, this.failure});

  @override
  final Logbook logbook;
  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'LogbookState.viewing(logbook: $logbook, failed: $failed, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Viewing &&
            (identical(other.logbook, logbook) ||
                const DeepCollectionEquality()
                    .equals(other.logbook, logbook)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logbook) ^
      const DeepCollectionEquality().hash(failed) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$ViewingCopyWith<_Viewing> get copyWith =>
      __$ViewingCopyWithImpl<_Viewing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    @required Result loading(),
    @required Result saving(),
    @required
        Result editing(Logbook logbook, LogbookEntry entry, bool failed,
            RepoFailure failure),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return viewing(logbook, failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    Result loading(),
    Result saving(),
    Result editing(
        Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewing != null) {
      return viewing(logbook, failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result viewing(_Viewing value),
    @required Result loading(_Loading value),
    @required Result saving(_Saving value),
    @required Result editing(_Editing value),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return viewing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result viewing(_Viewing value),
    Result loading(_Loading value),
    Result saving(_Saving value),
    Result editing(_Editing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewing != null) {
      return viewing(this);
    }
    return orElse();
  }
}

abstract class _Viewing implements LogbookState {
  const factory _Viewing({Logbook logbook, bool failed, RepoFailure failure}) =
      _$_Viewing;

  Logbook get logbook;
  bool get failed;
  RepoFailure get failure;
  _$ViewingCopyWith<_Viewing> get copyWith;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$LogbookStateCopyWithImpl<$Res>
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
    return 'LogbookState.loading()';
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
    @required Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    @required Result loading(),
    @required Result saving(),
    @required
        Result editing(Logbook logbook, LogbookEntry entry, bool failed,
            RepoFailure failure),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    Result loading(),
    Result saving(),
    Result editing(
        Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure),
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
    @required Result viewing(_Viewing value),
    @required Result loading(_Loading value),
    @required Result saving(_Saving value),
    @required Result editing(_Editing value),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result viewing(_Viewing value),
    Result loading(_Loading value),
    Result saving(_Saving value),
    Result editing(_Editing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LogbookState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SavingCopyWith<$Res> {
  factory _$SavingCopyWith(_Saving value, $Res Function(_Saving) then) =
      __$SavingCopyWithImpl<$Res>;
}

class __$SavingCopyWithImpl<$Res> extends _$LogbookStateCopyWithImpl<$Res>
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
    return 'LogbookState.saving()';
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
    @required Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    @required Result loading(),
    @required Result saving(),
    @required
        Result editing(Logbook logbook, LogbookEntry entry, bool failed,
            RepoFailure failure),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return saving();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    Result loading(),
    Result saving(),
    Result editing(
        Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure),
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
    @required Result viewing(_Viewing value),
    @required Result loading(_Loading value),
    @required Result saving(_Saving value),
    @required Result editing(_Editing value),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return saving(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result viewing(_Viewing value),
    Result loading(_Loading value),
    Result saving(_Saving value),
    Result editing(_Editing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements LogbookState {
  const factory _Saving() = _$_Saving;
}

abstract class _$EditingCopyWith<$Res> {
  factory _$EditingCopyWith(_Editing value, $Res Function(_Editing) then) =
      __$EditingCopyWithImpl<$Res>;
  $Res call(
      {Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure});

  $LogbookCopyWith<$Res> get logbook;
  $LogbookEntryCopyWith<$Res> get entry;
  $RepoFailureCopyWith<$Res> get failure;
}

class __$EditingCopyWithImpl<$Res> extends _$LogbookStateCopyWithImpl<$Res>
    implements _$EditingCopyWith<$Res> {
  __$EditingCopyWithImpl(_Editing _value, $Res Function(_Editing) _then)
      : super(_value, (v) => _then(v as _Editing));

  @override
  _Editing get _value => super._value as _Editing;

  @override
  $Res call({
    Object logbook = freezed,
    Object entry = freezed,
    Object failed = freezed,
    Object failure = freezed,
  }) {
    return _then(_Editing(
      logbook: logbook == freezed ? _value.logbook : logbook as Logbook,
      entry: entry == freezed ? _value.entry : entry as LogbookEntry,
      failed: failed == freezed ? _value.failed : failed as bool,
      failure: failure == freezed ? _value.failure : failure as RepoFailure,
    ));
  }

  @override
  $LogbookCopyWith<$Res> get logbook {
    if (_value.logbook == null) {
      return null;
    }
    return $LogbookCopyWith<$Res>(_value.logbook, (value) {
      return _then(_value.copyWith(logbook: value));
    });
  }

  @override
  $LogbookEntryCopyWith<$Res> get entry {
    if (_value.entry == null) {
      return null;
    }
    return $LogbookEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
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
  const _$_Editing({this.logbook, this.entry, this.failed, this.failure});

  @override
  final Logbook logbook;
  @override
  final LogbookEntry entry;
  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'LogbookState.editing(logbook: $logbook, entry: $entry, failed: $failed, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Editing &&
            (identical(other.logbook, logbook) ||
                const DeepCollectionEquality()
                    .equals(other.logbook, logbook)) &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logbook) ^
      const DeepCollectionEquality().hash(entry) ^
      const DeepCollectionEquality().hash(failed) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$EditingCopyWith<_Editing> get copyWith =>
      __$EditingCopyWithImpl<_Editing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    @required Result loading(),
    @required Result saving(),
    @required
        Result editing(Logbook logbook, LogbookEntry entry, bool failed,
            RepoFailure failure),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return editing(logbook, entry, failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewing(Logbook logbook, bool failed, RepoFailure failure),
    Result loading(),
    Result saving(),
    Result editing(
        Logbook logbook, LogbookEntry entry, bool failed, RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editing != null) {
      return editing(logbook, entry, failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result viewing(_Viewing value),
    @required Result loading(_Loading value),
    @required Result saving(_Saving value),
    @required Result editing(_Editing value),
  }) {
    assert(initial != null);
    assert(viewing != null);
    assert(loading != null);
    assert(saving != null);
    assert(editing != null);
    return editing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result viewing(_Viewing value),
    Result loading(_Loading value),
    Result saving(_Saving value),
    Result editing(_Editing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements LogbookState {
  const factory _Editing(
      {Logbook logbook,
      LogbookEntry entry,
      bool failed,
      RepoFailure failure}) = _$_Editing;

  Logbook get logbook;
  LogbookEntry get entry;
  bool get failed;
  RepoFailure get failure;
  _$EditingCopyWith<_Editing> get copyWith;
}
