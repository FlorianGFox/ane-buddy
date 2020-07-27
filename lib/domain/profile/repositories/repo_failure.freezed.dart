// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// ignore: unused_element
T _$identity<T>(T value) => value;

class _$RepoFailureTearOff {
  const _$RepoFailureTearOff();

// ignore: unused_element
  _Unknown unknown() {
    return const _Unknown();
  }
}

// ignore: unused_element
const $RepoFailure = _$RepoFailureTearOff();

mixin _$RepoFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(_Unknown value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(_Unknown value),
    @required Result orElse(),
  });
}

abstract class $RepoFailureCopyWith<$Res> {
  factory $RepoFailureCopyWith(
          RepoFailure value, $Res Function(RepoFailure) then) =
      _$RepoFailureCopyWithImpl<$Res>;
}

class _$RepoFailureCopyWithImpl<$Res> implements $RepoFailureCopyWith<$Res> {
  _$RepoFailureCopyWithImpl(this._value, this._then);

  final RepoFailure _value;
  // ignore: unused_field
  final $Res Function(RepoFailure) _then;
}

abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

class __$UnknownCopyWithImpl<$Res> extends _$RepoFailureCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'RepoFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
  }) {
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(_Unknown value),
  }) {
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(_Unknown value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements RepoFailure {
  const factory _Unknown() = _$_Unknown;
}
