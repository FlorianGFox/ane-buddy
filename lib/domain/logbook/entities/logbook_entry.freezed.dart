// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'logbook_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LogbookEntry _$LogbookEntryFromJson(Map<String, dynamic> json) {
  return _LogbookEntry.fromJson(json);
}

class _$LogbookEntryTearOff {
  const _$LogbookEntryTearOff();

// ignore: unused_element
  _LogbookEntry call(String text, List<String> dates, int max) {
    return _LogbookEntry(
      text,
      dates,
      max,
    );
  }
}

// ignore: unused_element
const $LogbookEntry = _$LogbookEntryTearOff();

mixin _$LogbookEntry {
  String get text;
  List<String> get dates;
  int get max;

  Map<String, dynamic> toJson();
  $LogbookEntryCopyWith<LogbookEntry> get copyWith;
}

abstract class $LogbookEntryCopyWith<$Res> {
  factory $LogbookEntryCopyWith(
          LogbookEntry value, $Res Function(LogbookEntry) then) =
      _$LogbookEntryCopyWithImpl<$Res>;
  $Res call({String text, List<String> dates, int max});
}

class _$LogbookEntryCopyWithImpl<$Res> implements $LogbookEntryCopyWith<$Res> {
  _$LogbookEntryCopyWithImpl(this._value, this._then);

  final LogbookEntry _value;
  // ignore: unused_field
  final $Res Function(LogbookEntry) _then;

  @override
  $Res call({
    Object text = freezed,
    Object dates = freezed,
    Object max = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
      dates: dates == freezed ? _value.dates : dates as List<String>,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

abstract class _$LogbookEntryCopyWith<$Res>
    implements $LogbookEntryCopyWith<$Res> {
  factory _$LogbookEntryCopyWith(
          _LogbookEntry value, $Res Function(_LogbookEntry) then) =
      __$LogbookEntryCopyWithImpl<$Res>;
  @override
  $Res call({String text, List<String> dates, int max});
}

class __$LogbookEntryCopyWithImpl<$Res> extends _$LogbookEntryCopyWithImpl<$Res>
    implements _$LogbookEntryCopyWith<$Res> {
  __$LogbookEntryCopyWithImpl(
      _LogbookEntry _value, $Res Function(_LogbookEntry) _then)
      : super(_value, (v) => _then(v as _LogbookEntry));

  @override
  _LogbookEntry get _value => super._value as _LogbookEntry;

  @override
  $Res call({
    Object text = freezed,
    Object dates = freezed,
    Object max = freezed,
  }) {
    return _then(_LogbookEntry(
      text == freezed ? _value.text : text as String,
      dates == freezed ? _value.dates : dates as List<String>,
      max == freezed ? _value.max : max as int,
    ));
  }
}

@JsonSerializable()
class _$_LogbookEntry implements _LogbookEntry {
  const _$_LogbookEntry(this.text, this.dates, this.max)
      : assert(text != null),
        assert(dates != null),
        assert(max != null);

  factory _$_LogbookEntry.fromJson(Map<String, dynamic> json) =>
      _$_$_LogbookEntryFromJson(json);

  @override
  final String text;
  @override
  final List<String> dates;
  @override
  final int max;

  @override
  String toString() {
    return 'LogbookEntry(text: $text, dates: $dates, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogbookEntry &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.dates, dates) ||
                const DeepCollectionEquality().equals(other.dates, dates)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(dates) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$LogbookEntryCopyWith<_LogbookEntry> get copyWith =>
      __$LogbookEntryCopyWithImpl<_LogbookEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LogbookEntryToJson(this);
  }
}

abstract class _LogbookEntry implements LogbookEntry {
  const factory _LogbookEntry(String text, List<String> dates, int max) =
      _$_LogbookEntry;

  factory _LogbookEntry.fromJson(Map<String, dynamic> json) =
      _$_LogbookEntry.fromJson;

  @override
  String get text;
  @override
  List<String> get dates;
  @override
  int get max;
  @override
  _$LogbookEntryCopyWith<_LogbookEntry> get copyWith;
}
