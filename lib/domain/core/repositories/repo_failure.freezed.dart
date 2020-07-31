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

// ignore: unused_element
  _NotFound notFound() {
    return const _NotFound();
  }
}

// ignore: unused_element
const $RepoFailure = _$RepoFailureTearOff();

mixin _$RepoFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
    @required Result notFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    Result notFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(_Unknown value),
    @required Result notFound(_NotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(_Unknown value),
    Result notFound(_NotFound value),
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
    @required Result notFound(),
  }) {
    assert(unknown != null);
    assert(notFound != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    Result notFound(),
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
    @required Result notFound(_NotFound value),
  }) {
    assert(unknown != null);
    assert(notFound != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(_Unknown value),
    Result notFound(_NotFound value),
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

abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

class __$NotFoundCopyWithImpl<$Res> extends _$RepoFailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'RepoFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
    @required Result notFound(),
  }) {
    assert(unknown != null);
    assert(notFound != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    Result notFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(_Unknown value),
    @required Result notFound(_NotFound value),
  }) {
    assert(unknown != null);
    assert(notFound != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(_Unknown value),
    Result notFound(_NotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements RepoFailure {
  const factory _NotFound() = _$_NotFound;
}
