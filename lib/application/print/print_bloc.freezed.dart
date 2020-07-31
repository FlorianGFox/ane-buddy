// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'print_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrintEventTearOff {
  const _$PrintEventTearOff();

// ignore: unused_element
  _CreatePdf createPdf() {
    return const _CreatePdf();
  }

// ignore: unused_element
  _ViewPdf viewPdf() {
    return const _ViewPdf();
  }
}

// ignore: unused_element
const $PrintEvent = _$PrintEventTearOff();

mixin _$PrintEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createPdf(),
    @required Result viewPdf(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createPdf(),
    Result viewPdf(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createPdf(_CreatePdf value),
    @required Result viewPdf(_ViewPdf value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createPdf(_CreatePdf value),
    Result viewPdf(_ViewPdf value),
    @required Result orElse(),
  });
}

abstract class $PrintEventCopyWith<$Res> {
  factory $PrintEventCopyWith(
          PrintEvent value, $Res Function(PrintEvent) then) =
      _$PrintEventCopyWithImpl<$Res>;
}

class _$PrintEventCopyWithImpl<$Res> implements $PrintEventCopyWith<$Res> {
  _$PrintEventCopyWithImpl(this._value, this._then);

  final PrintEvent _value;
  // ignore: unused_field
  final $Res Function(PrintEvent) _then;
}

abstract class _$CreatePdfCopyWith<$Res> {
  factory _$CreatePdfCopyWith(
          _CreatePdf value, $Res Function(_CreatePdf) then) =
      __$CreatePdfCopyWithImpl<$Res>;
}

class __$CreatePdfCopyWithImpl<$Res> extends _$PrintEventCopyWithImpl<$Res>
    implements _$CreatePdfCopyWith<$Res> {
  __$CreatePdfCopyWithImpl(_CreatePdf _value, $Res Function(_CreatePdf) _then)
      : super(_value, (v) => _then(v as _CreatePdf));

  @override
  _CreatePdf get _value => super._value as _CreatePdf;
}

class _$_CreatePdf implements _CreatePdf {
  const _$_CreatePdf();

  @override
  String toString() {
    return 'PrintEvent.createPdf()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreatePdf);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createPdf(),
    @required Result viewPdf(),
  }) {
    assert(createPdf != null);
    assert(viewPdf != null);
    return createPdf();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createPdf(),
    Result viewPdf(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createPdf != null) {
      return createPdf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createPdf(_CreatePdf value),
    @required Result viewPdf(_ViewPdf value),
  }) {
    assert(createPdf != null);
    assert(viewPdf != null);
    return createPdf(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createPdf(_CreatePdf value),
    Result viewPdf(_ViewPdf value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createPdf != null) {
      return createPdf(this);
    }
    return orElse();
  }
}

abstract class _CreatePdf implements PrintEvent {
  const factory _CreatePdf() = _$_CreatePdf;
}

abstract class _$ViewPdfCopyWith<$Res> {
  factory _$ViewPdfCopyWith(_ViewPdf value, $Res Function(_ViewPdf) then) =
      __$ViewPdfCopyWithImpl<$Res>;
}

class __$ViewPdfCopyWithImpl<$Res> extends _$PrintEventCopyWithImpl<$Res>
    implements _$ViewPdfCopyWith<$Res> {
  __$ViewPdfCopyWithImpl(_ViewPdf _value, $Res Function(_ViewPdf) _then)
      : super(_value, (v) => _then(v as _ViewPdf));

  @override
  _ViewPdf get _value => super._value as _ViewPdf;
}

class _$_ViewPdf implements _ViewPdf {
  const _$_ViewPdf();

  @override
  String toString() {
    return 'PrintEvent.viewPdf()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewPdf);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createPdf(),
    @required Result viewPdf(),
  }) {
    assert(createPdf != null);
    assert(viewPdf != null);
    return viewPdf();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createPdf(),
    Result viewPdf(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewPdf != null) {
      return viewPdf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createPdf(_CreatePdf value),
    @required Result viewPdf(_ViewPdf value),
  }) {
    assert(createPdf != null);
    assert(viewPdf != null);
    return viewPdf(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createPdf(_CreatePdf value),
    Result viewPdf(_ViewPdf value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewPdf != null) {
      return viewPdf(this);
    }
    return orElse();
  }
}

abstract class _ViewPdf implements PrintEvent {
  const factory _ViewPdf() = _$_ViewPdf;
}

class _$PrintStateTearOff {
  const _$PrintStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _CreatingPdf creatingPdf() {
    return const _CreatingPdf();
  }

// ignore: unused_element
  _PdfCreated pdfCreated({String path}) {
    return _PdfCreated(
      path: path,
    );
  }

// ignore: unused_element
  _ReadingPdf readingPdf() {
    return const _ReadingPdf();
  }

// ignore: unused_element
  _ViewingPdf viewingPdf() {
    return const _ViewingPdf();
  }

// ignore: unused_element
  _Failed failed(RepoFailure failure) {
    return _Failed(
      failure,
    );
  }
}

// ignore: unused_element
const $PrintState = _$PrintStateTearOff();

mixin _$PrintState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  });
}

abstract class $PrintStateCopyWith<$Res> {
  factory $PrintStateCopyWith(
          PrintState value, $Res Function(PrintState) then) =
      _$PrintStateCopyWithImpl<$Res>;
}

class _$PrintStateCopyWithImpl<$Res> implements $PrintStateCopyWith<$Res> {
  _$PrintStateCopyWithImpl(this._value, this._then);

  final PrintState _value;
  // ignore: unused_field
  final $Res Function(PrintState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$PrintStateCopyWithImpl<$Res>
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
    return 'PrintState.initial()';
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
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
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
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PrintState {
  const factory _Initial() = _$_Initial;
}

abstract class _$CreatingPdfCopyWith<$Res> {
  factory _$CreatingPdfCopyWith(
          _CreatingPdf value, $Res Function(_CreatingPdf) then) =
      __$CreatingPdfCopyWithImpl<$Res>;
}

class __$CreatingPdfCopyWithImpl<$Res> extends _$PrintStateCopyWithImpl<$Res>
    implements _$CreatingPdfCopyWith<$Res> {
  __$CreatingPdfCopyWithImpl(
      _CreatingPdf _value, $Res Function(_CreatingPdf) _then)
      : super(_value, (v) => _then(v as _CreatingPdf));

  @override
  _CreatingPdf get _value => super._value as _CreatingPdf;
}

class _$_CreatingPdf implements _CreatingPdf {
  const _$_CreatingPdf();

  @override
  String toString() {
    return 'PrintState.creatingPdf()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreatingPdf);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return creatingPdf();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (creatingPdf != null) {
      return creatingPdf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return creatingPdf(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (creatingPdf != null) {
      return creatingPdf(this);
    }
    return orElse();
  }
}

abstract class _CreatingPdf implements PrintState {
  const factory _CreatingPdf() = _$_CreatingPdf;
}

abstract class _$PdfCreatedCopyWith<$Res> {
  factory _$PdfCreatedCopyWith(
          _PdfCreated value, $Res Function(_PdfCreated) then) =
      __$PdfCreatedCopyWithImpl<$Res>;
  $Res call({String path});
}

class __$PdfCreatedCopyWithImpl<$Res> extends _$PrintStateCopyWithImpl<$Res>
    implements _$PdfCreatedCopyWith<$Res> {
  __$PdfCreatedCopyWithImpl(
      _PdfCreated _value, $Res Function(_PdfCreated) _then)
      : super(_value, (v) => _then(v as _PdfCreated));

  @override
  _PdfCreated get _value => super._value as _PdfCreated;

  @override
  $Res call({
    Object path = freezed,
  }) {
    return _then(_PdfCreated(
      path: path == freezed ? _value.path : path as String,
    ));
  }
}

class _$_PdfCreated implements _PdfCreated {
  const _$_PdfCreated({this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'PrintState.pdfCreated(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PdfCreated &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @override
  _$PdfCreatedCopyWith<_PdfCreated> get copyWith =>
      __$PdfCreatedCopyWithImpl<_PdfCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return pdfCreated(path);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pdfCreated != null) {
      return pdfCreated(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return pdfCreated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pdfCreated != null) {
      return pdfCreated(this);
    }
    return orElse();
  }
}

abstract class _PdfCreated implements PrintState {
  const factory _PdfCreated({String path}) = _$_PdfCreated;

  String get path;
  _$PdfCreatedCopyWith<_PdfCreated> get copyWith;
}

abstract class _$ReadingPdfCopyWith<$Res> {
  factory _$ReadingPdfCopyWith(
          _ReadingPdf value, $Res Function(_ReadingPdf) then) =
      __$ReadingPdfCopyWithImpl<$Res>;
}

class __$ReadingPdfCopyWithImpl<$Res> extends _$PrintStateCopyWithImpl<$Res>
    implements _$ReadingPdfCopyWith<$Res> {
  __$ReadingPdfCopyWithImpl(
      _ReadingPdf _value, $Res Function(_ReadingPdf) _then)
      : super(_value, (v) => _then(v as _ReadingPdf));

  @override
  _ReadingPdf get _value => super._value as _ReadingPdf;
}

class _$_ReadingPdf implements _ReadingPdf {
  const _$_ReadingPdf();

  @override
  String toString() {
    return 'PrintState.readingPdf()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReadingPdf);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return readingPdf();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (readingPdf != null) {
      return readingPdf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return readingPdf(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (readingPdf != null) {
      return readingPdf(this);
    }
    return orElse();
  }
}

abstract class _ReadingPdf implements PrintState {
  const factory _ReadingPdf() = _$_ReadingPdf;
}

abstract class _$ViewingPdfCopyWith<$Res> {
  factory _$ViewingPdfCopyWith(
          _ViewingPdf value, $Res Function(_ViewingPdf) then) =
      __$ViewingPdfCopyWithImpl<$Res>;
}

class __$ViewingPdfCopyWithImpl<$Res> extends _$PrintStateCopyWithImpl<$Res>
    implements _$ViewingPdfCopyWith<$Res> {
  __$ViewingPdfCopyWithImpl(
      _ViewingPdf _value, $Res Function(_ViewingPdf) _then)
      : super(_value, (v) => _then(v as _ViewingPdf));

  @override
  _ViewingPdf get _value => super._value as _ViewingPdf;
}

class _$_ViewingPdf implements _ViewingPdf {
  const _$_ViewingPdf();

  @override
  String toString() {
    return 'PrintState.viewingPdf()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewingPdf);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return viewingPdf();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewingPdf != null) {
      return viewingPdf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return viewingPdf(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewingPdf != null) {
      return viewingPdf(this);
    }
    return orElse();
  }
}

abstract class _ViewingPdf implements PrintState {
  const factory _ViewingPdf() = _$_ViewingPdf;
}

abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({RepoFailure failure});

  $RepoFailureCopyWith<$Res> get failure;
}

class __$FailedCopyWithImpl<$Res> extends _$PrintStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed ? _value.failure : failure as RepoFailure,
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

class _$_Failed implements _Failed {
  const _$_Failed(this.failure) : assert(failure != null);

  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'PrintState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result creatingPdf(),
    @required Result pdfCreated(String path),
    @required Result readingPdf(),
    @required Result viewingPdf(),
    @required Result failed(RepoFailure failure),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result creatingPdf(),
    Result pdfCreated(String path),
    Result readingPdf(),
    Result viewingPdf(),
    Result failed(RepoFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result creatingPdf(_CreatingPdf value),
    @required Result pdfCreated(_PdfCreated value),
    @required Result readingPdf(_ReadingPdf value),
    @required Result viewingPdf(_ViewingPdf value),
    @required Result failed(_Failed value),
  }) {
    assert(initial != null);
    assert(creatingPdf != null);
    assert(pdfCreated != null);
    assert(readingPdf != null);
    assert(viewingPdf != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result creatingPdf(_CreatingPdf value),
    Result pdfCreated(_PdfCreated value),
    Result readingPdf(_ReadingPdf value),
    Result viewingPdf(_ViewingPdf value),
    Result failed(_Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PrintState {
  const factory _Failed(RepoFailure failure) = _$_Failed;

  RepoFailure get failure;
  _$FailedCopyWith<_Failed> get copyWith;
}
