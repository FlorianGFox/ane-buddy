// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'logbook_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LogbookList _$LogbookListFromJson(Map<String, dynamic> json) {
  return _LogbookList.fromJson(json);
}

class _$LogbookListTearOff {
  const _$LogbookListTearOff();

// ignore: unused_element
  _LogbookList call(String name, List<LogbookEntry> entries) {
    return _LogbookList(
      name,
      entries,
    );
  }
}

// ignore: unused_element
const $LogbookList = _$LogbookListTearOff();

mixin _$LogbookList {
  String get name;
  List<LogbookEntry> get entries;

  Map<String, dynamic> toJson();
  $LogbookListCopyWith<LogbookList> get copyWith;
}

abstract class $LogbookListCopyWith<$Res> {
  factory $LogbookListCopyWith(
          LogbookList value, $Res Function(LogbookList) then) =
      _$LogbookListCopyWithImpl<$Res>;
  $Res call({String name, List<LogbookEntry> entries});
}

class _$LogbookListCopyWithImpl<$Res> implements $LogbookListCopyWith<$Res> {
  _$LogbookListCopyWithImpl(this._value, this._then);

  final LogbookList _value;
  // ignore: unused_field
  final $Res Function(LogbookList) _then;

  @override
  $Res call({
    Object name = freezed,
    Object entries = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      entries:
          entries == freezed ? _value.entries : entries as List<LogbookEntry>,
    ));
  }
}

abstract class _$LogbookListCopyWith<$Res>
    implements $LogbookListCopyWith<$Res> {
  factory _$LogbookListCopyWith(
          _LogbookList value, $Res Function(_LogbookList) then) =
      __$LogbookListCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<LogbookEntry> entries});
}

class __$LogbookListCopyWithImpl<$Res> extends _$LogbookListCopyWithImpl<$Res>
    implements _$LogbookListCopyWith<$Res> {
  __$LogbookListCopyWithImpl(
      _LogbookList _value, $Res Function(_LogbookList) _then)
      : super(_value, (v) => _then(v as _LogbookList));

  @override
  _LogbookList get _value => super._value as _LogbookList;

  @override
  $Res call({
    Object name = freezed,
    Object entries = freezed,
  }) {
    return _then(_LogbookList(
      name == freezed ? _value.name : name as String,
      entries == freezed ? _value.entries : entries as List<LogbookEntry>,
    ));
  }
}

@JsonSerializable()
class _$_LogbookList implements _LogbookList {
  const _$_LogbookList(this.name, this.entries)
      : assert(name != null),
        assert(entries != null);

  factory _$_LogbookList.fromJson(Map<String, dynamic> json) =>
      _$_$_LogbookListFromJson(json);

  @override
  final String name;
  @override
  final List<LogbookEntry> entries;

  @override
  String toString() {
    return 'LogbookList(name: $name, entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogbookList &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(entries);

  @override
  _$LogbookListCopyWith<_LogbookList> get copyWith =>
      __$LogbookListCopyWithImpl<_LogbookList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LogbookListToJson(this);
  }
}

abstract class _LogbookList implements LogbookList {
  const factory _LogbookList(String name, List<LogbookEntry> entries) =
      _$_LogbookList;

  factory _LogbookList.fromJson(Map<String, dynamic> json) =
      _$_LogbookList.fromJson;

  @override
  String get name;
  @override
  List<LogbookEntry> get entries;
  @override
  _$LogbookListCopyWith<_LogbookList> get copyWith;
}
