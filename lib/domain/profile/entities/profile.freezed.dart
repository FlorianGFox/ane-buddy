// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

class _$ProfileTearOff {
  const _$ProfileTearOff();

// ignore: unused_element
  _Profile call(
      {String firstName,
      String lastName,
      String birthday,
      String birthPlace,
      bool hasDrMed,
      String otherDegrees,
      bool hasForeignDegree,
      String foreignDegrees,
      String medicalExamDate,
      String dentalExamDate,
      String approvalDate}) {
    return _Profile(
      firstName: firstName,
      lastName: lastName,
      birthday: birthday,
      birthPlace: birthPlace,
      hasDrMed: hasDrMed,
      otherDegrees: otherDegrees,
      hasForeignDegree: hasForeignDegree,
      foreignDegrees: foreignDegrees,
      medicalExamDate: medicalExamDate,
      dentalExamDate: dentalExamDate,
      approvalDate: approvalDate,
    );
  }
}

// ignore: unused_element
const $Profile = _$ProfileTearOff();

mixin _$Profile {
  String get firstName;
  String get lastName;
  String get birthday;
  String get birthPlace;
  bool get hasDrMed;
  String get otherDegrees;
  bool get hasForeignDegree;
  String get foreignDegrees;
  String get medicalExamDate;
  String get dentalExamDate;
  String get approvalDate;

  Map<String, dynamic> toJson();
  $ProfileCopyWith<Profile> get copyWith;
}

abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String birthday,
      String birthPlace,
      bool hasDrMed,
      String otherDegrees,
      bool hasForeignDegree,
      String foreignDegrees,
      String medicalExamDate,
      String dentalExamDate,
      String approvalDate});
}

class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object birthday = freezed,
    Object birthPlace = freezed,
    Object hasDrMed = freezed,
    Object otherDegrees = freezed,
    Object hasForeignDegree = freezed,
    Object foreignDegrees = freezed,
    Object medicalExamDate = freezed,
    Object dentalExamDate = freezed,
    Object approvalDate = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
      birthPlace:
          birthPlace == freezed ? _value.birthPlace : birthPlace as String,
      hasDrMed: hasDrMed == freezed ? _value.hasDrMed : hasDrMed as bool,
      otherDegrees: otherDegrees == freezed
          ? _value.otherDegrees
          : otherDegrees as String,
      hasForeignDegree: hasForeignDegree == freezed
          ? _value.hasForeignDegree
          : hasForeignDegree as bool,
      foreignDegrees: foreignDegrees == freezed
          ? _value.foreignDegrees
          : foreignDegrees as String,
      medicalExamDate: medicalExamDate == freezed
          ? _value.medicalExamDate
          : medicalExamDate as String,
      dentalExamDate: dentalExamDate == freezed
          ? _value.dentalExamDate
          : dentalExamDate as String,
      approvalDate: approvalDate == freezed
          ? _value.approvalDate
          : approvalDate as String,
    ));
  }
}

abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String birthday,
      String birthPlace,
      bool hasDrMed,
      String otherDegrees,
      bool hasForeignDegree,
      String foreignDegrees,
      String medicalExamDate,
      String dentalExamDate,
      String approvalDate});
}

class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object birthday = freezed,
    Object birthPlace = freezed,
    Object hasDrMed = freezed,
    Object otherDegrees = freezed,
    Object hasForeignDegree = freezed,
    Object foreignDegrees = freezed,
    Object medicalExamDate = freezed,
    Object dentalExamDate = freezed,
    Object approvalDate = freezed,
  }) {
    return _then(_Profile(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      birthday: birthday == freezed ? _value.birthday : birthday as String,
      birthPlace:
          birthPlace == freezed ? _value.birthPlace : birthPlace as String,
      hasDrMed: hasDrMed == freezed ? _value.hasDrMed : hasDrMed as bool,
      otherDegrees: otherDegrees == freezed
          ? _value.otherDegrees
          : otherDegrees as String,
      hasForeignDegree: hasForeignDegree == freezed
          ? _value.hasForeignDegree
          : hasForeignDegree as bool,
      foreignDegrees: foreignDegrees == freezed
          ? _value.foreignDegrees
          : foreignDegrees as String,
      medicalExamDate: medicalExamDate == freezed
          ? _value.medicalExamDate
          : medicalExamDate as String,
      dentalExamDate: dentalExamDate == freezed
          ? _value.dentalExamDate
          : dentalExamDate as String,
      approvalDate: approvalDate == freezed
          ? _value.approvalDate
          : approvalDate as String,
    ));
  }
}

@JsonSerializable()
class _$_Profile implements _Profile {
  const _$_Profile(
      {this.firstName,
      this.lastName,
      this.birthday,
      this.birthPlace,
      this.hasDrMed,
      this.otherDegrees,
      this.hasForeignDegree,
      this.foreignDegrees,
      this.medicalExamDate,
      this.dentalExamDate,
      this.approvalDate});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String birthday;
  @override
  final String birthPlace;
  @override
  final bool hasDrMed;
  @override
  final String otherDegrees;
  @override
  final bool hasForeignDegree;
  @override
  final String foreignDegrees;
  @override
  final String medicalExamDate;
  @override
  final String dentalExamDate;
  @override
  final String approvalDate;

  @override
  String toString() {
    return 'Profile(firstName: $firstName, lastName: $lastName, birthday: $birthday, birthPlace: $birthPlace, hasDrMed: $hasDrMed, otherDegrees: $otherDegrees, hasForeignDegree: $hasForeignDegree, foreignDegrees: $foreignDegrees, medicalExamDate: $medicalExamDate, dentalExamDate: $dentalExamDate, approvalDate: $approvalDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.birthPlace, birthPlace) ||
                const DeepCollectionEquality()
                    .equals(other.birthPlace, birthPlace)) &&
            (identical(other.hasDrMed, hasDrMed) ||
                const DeepCollectionEquality()
                    .equals(other.hasDrMed, hasDrMed)) &&
            (identical(other.otherDegrees, otherDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.otherDegrees, otherDegrees)) &&
            (identical(other.hasForeignDegree, hasForeignDegree) ||
                const DeepCollectionEquality()
                    .equals(other.hasForeignDegree, hasForeignDegree)) &&
            (identical(other.foreignDegrees, foreignDegrees) ||
                const DeepCollectionEquality()
                    .equals(other.foreignDegrees, foreignDegrees)) &&
            (identical(other.medicalExamDate, medicalExamDate) ||
                const DeepCollectionEquality()
                    .equals(other.medicalExamDate, medicalExamDate)) &&
            (identical(other.dentalExamDate, dentalExamDate) ||
                const DeepCollectionEquality()
                    .equals(other.dentalExamDate, dentalExamDate)) &&
            (identical(other.approvalDate, approvalDate) ||
                const DeepCollectionEquality()
                    .equals(other.approvalDate, approvalDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(birthPlace) ^
      const DeepCollectionEquality().hash(hasDrMed) ^
      const DeepCollectionEquality().hash(otherDegrees) ^
      const DeepCollectionEquality().hash(hasForeignDegree) ^
      const DeepCollectionEquality().hash(foreignDegrees) ^
      const DeepCollectionEquality().hash(medicalExamDate) ^
      const DeepCollectionEquality().hash(dentalExamDate) ^
      const DeepCollectionEquality().hash(approvalDate);

  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {String firstName,
      String lastName,
      String birthday,
      String birthPlace,
      bool hasDrMed,
      String otherDegrees,
      bool hasForeignDegree,
      String foreignDegrees,
      String medicalExamDate,
      String dentalExamDate,
      String approvalDate}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get birthday;
  @override
  String get birthPlace;
  @override
  bool get hasDrMed;
  @override
  String get otherDegrees;
  @override
  bool get hasForeignDegree;
  @override
  String get foreignDegrees;
  @override
  String get medicalExamDate;
  @override
  String get dentalExamDate;
  @override
  String get approvalDate;
  @override
  _$ProfileCopyWith<_Profile> get copyWith;
}
