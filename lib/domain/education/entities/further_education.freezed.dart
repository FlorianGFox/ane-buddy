// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'further_education.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FurtherEducation _$FurtherEducationFromJson(Map<String, dynamic> json) {
  return _FurtherEducation.fromJson(json);
}

class _$FurtherEducationTearOff {
  const _$FurtherEducationTearOff();

// ignore: unused_element
  _FurtherEducation call(List<FutherEducationEntry> entries) {
    return _FurtherEducation(
      entries,
    );
  }
}

// ignore: unused_element
const $FurtherEducation = _$FurtherEducationTearOff();

mixin _$FurtherEducation {
  List<FutherEducationEntry> get entries;

  Map<String, dynamic> toJson();
  $FurtherEducationCopyWith<FurtherEducation> get copyWith;
}

abstract class $FurtherEducationCopyWith<$Res> {
  factory $FurtherEducationCopyWith(
          FurtherEducation value, $Res Function(FurtherEducation) then) =
      _$FurtherEducationCopyWithImpl<$Res>;
  $Res call({List<FutherEducationEntry> entries});
}

class _$FurtherEducationCopyWithImpl<$Res>
    implements $FurtherEducationCopyWith<$Res> {
  _$FurtherEducationCopyWithImpl(this._value, this._then);

  final FurtherEducation _value;
  // ignore: unused_field
  final $Res Function(FurtherEducation) _then;

  @override
  $Res call({
    Object entries = freezed,
  }) {
    return _then(_value.copyWith(
      entries: entries == freezed
          ? _value.entries
          : entries as List<FutherEducationEntry>,
    ));
  }
}

abstract class _$FurtherEducationCopyWith<$Res>
    implements $FurtherEducationCopyWith<$Res> {
  factory _$FurtherEducationCopyWith(
          _FurtherEducation value, $Res Function(_FurtherEducation) then) =
      __$FurtherEducationCopyWithImpl<$Res>;
  @override
  $Res call({List<FutherEducationEntry> entries});
}

class __$FurtherEducationCopyWithImpl<$Res>
    extends _$FurtherEducationCopyWithImpl<$Res>
    implements _$FurtherEducationCopyWith<$Res> {
  __$FurtherEducationCopyWithImpl(
      _FurtherEducation _value, $Res Function(_FurtherEducation) _then)
      : super(_value, (v) => _then(v as _FurtherEducation));

  @override
  _FurtherEducation get _value => super._value as _FurtherEducation;

  @override
  $Res call({
    Object entries = freezed,
  }) {
    return _then(_FurtherEducation(
      entries == freezed
          ? _value.entries
          : entries as List<FutherEducationEntry>,
    ));
  }
}

@JsonSerializable()
class _$_FurtherEducation implements _FurtherEducation {
  const _$_FurtherEducation(this.entries) : assert(entries != null);

  factory _$_FurtherEducation.fromJson(Map<String, dynamic> json) =>
      _$_$_FurtherEducationFromJson(json);

  @override
  final List<FutherEducationEntry> entries;

  @override
  String toString() {
    return 'FurtherEducation(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FurtherEducation &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entries);

  @override
  _$FurtherEducationCopyWith<_FurtherEducation> get copyWith =>
      __$FurtherEducationCopyWithImpl<_FurtherEducation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FurtherEducationToJson(this);
  }
}

abstract class _FurtherEducation implements FurtherEducation {
  const factory _FurtherEducation(List<FutherEducationEntry> entries) =
      _$_FurtherEducation;

  factory _FurtherEducation.fromJson(Map<String, dynamic> json) =
      _$_FurtherEducation.fromJson;

  @override
  List<FutherEducationEntry> get entries;
  @override
  _$FurtherEducationCopyWith<_FurtherEducation> get copyWith;
}
