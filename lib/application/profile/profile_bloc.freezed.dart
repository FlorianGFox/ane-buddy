// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

// ignore: unused_element
  _Save save(Profile profile) {
    return _Save(
      profile,
    );
  }

// ignore: unused_element
  _Load load() {
    return const _Load();
  }
}

// ignore: unused_element
const $ProfileEvent = _$ProfileEventTearOff();

mixin _$ProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result save(Profile profile),
    @required Result load(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result save(Profile profile),
    Result load(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result save(_Save value),
    @required Result load(_Load value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result save(_Save value),
    Result load(_Load value),
    @required Result orElse(),
  });
}

abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

class __$SaveCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object profile = freezed,
  }) {
    return _then(_Save(
      profile == freezed ? _value.profile : profile as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

class _$_Save implements _Save {
  const _$_Save(this.profile) : assert(profile != null);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileEvent.save(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result save(Profile profile),
    @required Result load(),
  }) {
    assert(save != null);
    assert(load != null);
    return save(profile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result save(Profile profile),
    Result load(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result save(_Save value),
    @required Result load(_Load value),
  }) {
    assert(save != null);
    assert(load != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result save(_Save value),
    Result load(_Load value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements ProfileEvent {
  const factory _Save(Profile profile) = _$_Save;

  Profile get profile;
  _$SaveCopyWith<_Save> get copyWith;
}

abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

class __$LoadCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.load()';
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
    @required Result save(Profile profile),
    @required Result load(),
  }) {
    assert(save != null);
    assert(load != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result save(Profile profile),
    Result load(),
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
    @required Result save(_Save value),
    @required Result load(_Load value),
  }) {
    assert(save != null);
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result save(_Save value),
    Result load(_Load value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ProfileEvent {
  const factory _Load() = _$_Load;
}

class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Ready ready({Profile profile, bool failed = false, RepoFailure failure}) {
    return _Ready(
      profile: profile,
      failed: failed,
      failure: failure,
    );
  }

// ignore: unused_element
  _Saving saving() {
    return const _Saving();
  }
}

// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

mixin _$ProfileState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(Profile profile, bool failed, RepoFailure failure),
    @required Result saving(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(Profile profile, bool failed, RepoFailure failure),
    Result saving(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result ready(_Ready value),
    @required Result saving(_Saving value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result ready(_Ready value),
    Result saving(_Saving value),
    @required Result orElse(),
  });
}

abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.initial()';
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
    @required Result ready(Profile profile, bool failed, RepoFailure failure),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(Profile profile, bool failed, RepoFailure failure),
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
    @required Result ready(_Ready value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result ready(_Ready value),
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

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.loading()';
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
    @required Result ready(Profile profile, bool failed, RepoFailure failure),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(Profile profile, bool failed, RepoFailure failure),
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
    @required Result ready(_Ready value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result ready(_Ready value),
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

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$_Loading;
}

abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call({Profile profile, bool failed, RepoFailure failure});

  $ProfileCopyWith<$Res> get profile;
  $RepoFailureCopyWith<$Res> get failure;
}

class __$ReadyCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object profile = freezed,
    Object failed = freezed,
    Object failure = freezed,
  }) {
    return _then(_Ready(
      profile: profile == freezed ? _value.profile : profile as Profile,
      failed: failed == freezed ? _value.failed : failed as bool,
      failure: failure == freezed ? _value.failure : failure as RepoFailure,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
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

class _$_Ready implements _Ready {
  const _$_Ready({this.profile, this.failed = false, this.failure})
      : assert(failed != null);

  @override
  final Profile profile;
  @JsonKey(defaultValue: false)
  @override
  final bool failed;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'ProfileState.ready(profile: $profile, failed: $failed, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ready &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(failed) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result ready(Profile profile, bool failed, RepoFailure failure),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return ready(profile, failed, failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(Profile profile, bool failed, RepoFailure failure),
    Result saving(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(profile, failed, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result ready(_Ready value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result ready(_Ready value),
    Result saving(_Saving value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements ProfileState {
  const factory _Ready({Profile profile, bool failed, RepoFailure failure}) =
      _$_Ready;

  Profile get profile;
  bool get failed;
  RepoFailure get failure;
  _$ReadyCopyWith<_Ready> get copyWith;
}

abstract class _$SavingCopyWith<$Res> {
  factory _$SavingCopyWith(_Saving value, $Res Function(_Saving) then) =
      __$SavingCopyWithImpl<$Res>;
}

class __$SavingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.saving()';
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
    @required Result ready(Profile profile, bool failed, RepoFailure failure),
    @required Result saving(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return saving();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result ready(Profile profile, bool failed, RepoFailure failure),
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
    @required Result ready(_Ready value),
    @required Result saving(_Saving value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(ready != null);
    assert(saving != null);
    return saving(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result ready(_Ready value),
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

abstract class _Saving implements ProfileState {
  const factory _Saving() = _$_Saving;
}
