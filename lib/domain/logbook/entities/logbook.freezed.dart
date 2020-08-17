// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'logbook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Logbook _$LogbookFromJson(Map<String, dynamic> json) {
  return _Logbook.fromJson(json);
}

class _$LogbookTearOff {
  const _$LogbookTearOff();

// ignore: unused_element
  _Logbook call(String name, List<LogbookList> lists) {
    return _Logbook(
      name,
      lists,
    );
  }
}

// ignore: unused_element
const $Logbook = _$LogbookTearOff();

mixin _$Logbook {
  String get name;
  List<LogbookList> get lists;

  Map<String, dynamic> toJson();
  $LogbookCopyWith<Logbook> get copyWith;
}

abstract class $LogbookCopyWith<$Res> {
  factory $LogbookCopyWith(Logbook value, $Res Function(Logbook) then) =
      _$LogbookCopyWithImpl<$Res>;
  $Res call({String name, List<LogbookList> lists});
}

class _$LogbookCopyWithImpl<$Res> implements $LogbookCopyWith<$Res> {
  _$LogbookCopyWithImpl(this._value, this._then);

  final Logbook _value;
  // ignore: unused_field
  final $Res Function(Logbook) _then;

  @override
  $Res call({
    Object name = freezed,
    Object lists = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      lists: lists == freezed ? _value.lists : lists as List<LogbookList>,
    ));
  }
}

abstract class _$LogbookCopyWith<$Res> implements $LogbookCopyWith<$Res> {
  factory _$LogbookCopyWith(_Logbook value, $Res Function(_Logbook) then) =
      __$LogbookCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<LogbookList> lists});
}

class __$LogbookCopyWithImpl<$Res> extends _$LogbookCopyWithImpl<$Res>
    implements _$LogbookCopyWith<$Res> {
  __$LogbookCopyWithImpl(_Logbook _value, $Res Function(_Logbook) _then)
      : super(_value, (v) => _then(v as _Logbook));

  @override
  _Logbook get _value => super._value as _Logbook;

  @override
  $Res call({
    Object name = freezed,
    Object lists = freezed,
  }) {
    return _then(_Logbook(
      name == freezed ? _value.name : name as String,
      lists == freezed ? _value.lists : lists as List<LogbookList>,
    ));
  }
}

@JsonSerializable()
class _$_Logbook implements _Logbook {
  const _$_Logbook(this.name, this.lists)
      : assert(name != null),
        assert(lists != null);

  factory _$_Logbook.fromJson(Map<String, dynamic> json) =>
      _$_$_LogbookFromJson(json);

  @override
  final String name;
  @override
  final List<LogbookList> lists;

  @override
  String toString() {
    return 'Logbook(name: $name, lists: $lists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Logbook &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lists, lists) ||
                const DeepCollectionEquality().equals(other.lists, lists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lists);

  @override
  _$LogbookCopyWith<_Logbook> get copyWith =>
      __$LogbookCopyWithImpl<_Logbook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LogbookToJson(this);
  }
}

abstract class _Logbook implements Logbook {
  const factory _Logbook(String name, List<LogbookList> lists) = _$_Logbook;

  factory _Logbook.fromJson(Map<String, dynamic> json) = _$_Logbook.fromJson;

  @override
  String get name;
  @override
  List<LogbookList> get lists;
  @override
  _$LogbookCopyWith<_Logbook> get copyWith;
}
