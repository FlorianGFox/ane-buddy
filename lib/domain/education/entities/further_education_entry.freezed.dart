// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'further_education_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FutherEducationEntry _$FutherEducationEntryFromJson(Map<String, dynamic> json) {
  return _FutherEducationEntry.fromJson(json);
}

class _$FutherEducationEntryTearOff {
  const _$FutherEducationEntryTearOff();

// ignore: unused_element
  _FutherEducationEntry call(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate}) {
    return _FutherEducationEntry(
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
const $FutherEducationEntry = _$FutherEducationEntryTearOff();

mixin _$FutherEducationEntry {
  String get institution;
  String get place;
  String get educator;
  String get topic;
  String get startDate;
  String get endDate;

  Map<String, dynamic> toJson();
  $FutherEducationEntryCopyWith<FutherEducationEntry> get copyWith;
}

abstract class $FutherEducationEntryCopyWith<$Res> {
  factory $FutherEducationEntryCopyWith(FutherEducationEntry value,
          $Res Function(FutherEducationEntry) then) =
      _$FutherEducationEntryCopyWithImpl<$Res>;
  $Res call(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate});
}

class _$FutherEducationEntryCopyWithImpl<$Res>
    implements $FutherEducationEntryCopyWith<$Res> {
  _$FutherEducationEntryCopyWithImpl(this._value, this._then);

  final FutherEducationEntry _value;
  // ignore: unused_field
  final $Res Function(FutherEducationEntry) _then;

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

abstract class _$FutherEducationEntryCopyWith<$Res>
    implements $FutherEducationEntryCopyWith<$Res> {
  factory _$FutherEducationEntryCopyWith(_FutherEducationEntry value,
          $Res Function(_FutherEducationEntry) then) =
      __$FutherEducationEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate});
}

class __$FutherEducationEntryCopyWithImpl<$Res>
    extends _$FutherEducationEntryCopyWithImpl<$Res>
    implements _$FutherEducationEntryCopyWith<$Res> {
  __$FutherEducationEntryCopyWithImpl(
      _FutherEducationEntry _value, $Res Function(_FutherEducationEntry) _then)
      : super(_value, (v) => _then(v as _FutherEducationEntry));

  @override
  _FutherEducationEntry get _value => super._value as _FutherEducationEntry;

  @override
  $Res call({
    Object institution = freezed,
    Object place = freezed,
    Object educator = freezed,
    Object topic = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_FutherEducationEntry(
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
class _$_FutherEducationEntry implements _FutherEducationEntry {
  const _$_FutherEducationEntry(
      {this.institution,
      this.place,
      this.educator,
      this.topic,
      this.startDate,
      this.endDate});

  factory _$_FutherEducationEntry.fromJson(Map<String, dynamic> json) =>
      _$_$_FutherEducationEntryFromJson(json);

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
    return 'FutherEducationEntry(institution: $institution, place: $place, educator: $educator, topic: $topic, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FutherEducationEntry &&
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
  _$FutherEducationEntryCopyWith<_FutherEducationEntry> get copyWith =>
      __$FutherEducationEntryCopyWithImpl<_FutherEducationEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FutherEducationEntryToJson(this);
  }
}

abstract class _FutherEducationEntry implements FutherEducationEntry {
  const factory _FutherEducationEntry(
      {String institution,
      String place,
      String educator,
      String topic,
      String startDate,
      String endDate}) = _$_FutherEducationEntry;

  factory _FutherEducationEntry.fromJson(Map<String, dynamic> json) =
      _$_FutherEducationEntry.fromJson;

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
  _$FutherEducationEntryCopyWith<_FutherEducationEntry> get copyWith;
}
