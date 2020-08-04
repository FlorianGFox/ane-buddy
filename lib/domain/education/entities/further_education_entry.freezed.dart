// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'further_education_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FurtherEducationEntry _$FurtherEducationEntryFromJson(
    Map<String, dynamic> json) {
  return _FurtherEducationEntry.fromJson(json);
}

class _$FurtherEducationEntryTearOff {
  const _$FurtherEducationEntryTearOff();

// ignore: unused_element
  _FurtherEducationEntry call(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate}) {
    return _FurtherEducationEntry(
      institution: institution,
      place: place,
      educator: educator,
      topic: topic,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

// ignore: unused_element
const $FurtherEducationEntry = _$FurtherEducationEntryTearOff();

mixin _$FurtherEducationEntry {
  String get institution;
  String get place;
  String get educator;
  String get topic;
  String get startDate;
  String get endDate;

  Map<String, dynamic> toJson();
  $FurtherEducationEntryCopyWith<FurtherEducationEntry> get copyWith;
}

abstract class $FurtherEducationEntryCopyWith<$Res> {
  factory $FurtherEducationEntryCopyWith(FurtherEducationEntry value,
          $Res Function(FurtherEducationEntry) then) =
      _$FurtherEducationEntryCopyWithImpl<$Res>;
  $Res call(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate});
}

class _$FurtherEducationEntryCopyWithImpl<$Res>
    implements $FurtherEducationEntryCopyWith<$Res> {
  _$FurtherEducationEntryCopyWithImpl(this._value, this._then);

  final FurtherEducationEntry _value;
  // ignore: unused_field
  final $Res Function(FurtherEducationEntry) _then;

  @override
  $Res call({
    Object institution = freezed,
    Object place = freezed,
    Object educator = freezed,
    Object topic = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_value.copyWith(
      institution:
          institution == freezed ? _value.institution : institution as String,
      place: place == freezed ? _value.place : place as String,
      educator: educator == freezed ? _value.educator : educator as String,
      topic: topic == freezed ? _value.topic : topic as String,
      startDate: startDate == freezed ? _value.startDate : startDate as String,
      endDate: endDate == freezed ? _value.endDate : endDate as String,
    ));
  }
}

abstract class _$FurtherEducationEntryCopyWith<$Res>
    implements $FurtherEducationEntryCopyWith<$Res> {
  factory _$FurtherEducationEntryCopyWith(_FurtherEducationEntry value,
          $Res Function(_FurtherEducationEntry) then) =
      __$FurtherEducationEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate});
}

class __$FurtherEducationEntryCopyWithImpl<$Res>
    extends _$FurtherEducationEntryCopyWithImpl<$Res>
    implements _$FurtherEducationEntryCopyWith<$Res> {
  __$FurtherEducationEntryCopyWithImpl(_FurtherEducationEntry _value,
      $Res Function(_FurtherEducationEntry) _then)
      : super(_value, (v) => _then(v as _FurtherEducationEntry));

  @override
  _FurtherEducationEntry get _value => super._value as _FurtherEducationEntry;

  @override
  $Res call({
    Object institution = freezed,
    Object place = freezed,
    Object educator = freezed,
    Object topic = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_FurtherEducationEntry(
      institution:
          institution == freezed ? _value.institution : institution as String,
      place: place == freezed ? _value.place : place as String,
      educator: educator == freezed ? _value.educator : educator as String,
      topic: topic == freezed ? _value.topic : topic as String,
      startDate: startDate == freezed ? _value.startDate : startDate as String,
      endDate: endDate == freezed ? _value.endDate : endDate as String,
    ));
  }
}

@JsonSerializable()
class _$_FurtherEducationEntry implements _FurtherEducationEntry {
  const _$_FurtherEducationEntry(
      {this.institution,
      this.place,
      this.educator,
      this.topic,
      this.startDate,
      this.endDate});

  factory _$_FurtherEducationEntry.fromJson(Map<String, dynamic> json) =>
      _$_$_FurtherEducationEntryFromJson(json);

  @override
  final String institution;
  @override
  final String place;
  @override
  final String educator;
  @override
  final String topic;
  @override
  final String startDate;
  @override
  final String endDate;

  @override
  String toString() {
    return 'FurtherEducationEntry(institution: $institution, place: $place, educator: $educator, topic: $topic, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FurtherEducationEntry &&
            (identical(other.institution, institution) ||
                const DeepCollectionEquality()
                    .equals(other.institution, institution)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.educator, educator) ||
                const DeepCollectionEquality()
                    .equals(other.educator, educator)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(institution) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(educator) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @override
  _$FurtherEducationEntryCopyWith<_FurtherEducationEntry> get copyWith =>
      __$FurtherEducationEntryCopyWithImpl<_FurtherEducationEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FurtherEducationEntryToJson(this);
  }
}

abstract class _FurtherEducationEntry implements FurtherEducationEntry {
  const factory _FurtherEducationEntry(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate}) = _$_FurtherEducationEntry;

  factory _FurtherEducationEntry.fromJson(Map<String, dynamic> json) =
      _$_FurtherEducationEntry.fromJson;

  @override
  String get institution;
  @override
  String get place;
  @override
  String get educator;
  @override
  String get topic;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  _$FurtherEducationEntryCopyWith<_FurtherEducationEntry> get copyWith;
}
