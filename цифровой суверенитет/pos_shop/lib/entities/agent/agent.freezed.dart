// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return _Agent.fromJson(json);
}

/// @nodoc
mixin _$Agent {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get midName => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res, Agent>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String midName,
      String login,
      String password,
      String id});
}

/// @nodoc
class _$AgentCopyWithImpl<$Res, $Val extends Agent>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? midName = null,
    Object? login = null,
    Object? password = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      midName: null == midName
          ? _value.midName
          : midName // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$_AgentCopyWith(_$_Agent value, $Res Function(_$_Agent) then) =
      __$$_AgentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String midName,
      String login,
      String password,
      String id});
}

/// @nodoc
class __$$_AgentCopyWithImpl<$Res> extends _$AgentCopyWithImpl<$Res, _$_Agent>
    implements _$$_AgentCopyWith<$Res> {
  __$$_AgentCopyWithImpl(_$_Agent _value, $Res Function(_$_Agent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? midName = null,
    Object? login = null,
    Object? password = null,
    Object? id = null,
  }) {
    return _then(_$_Agent(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      midName: null == midName
          ? _value.midName
          : midName // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Agent with DiagnosticableTreeMixin implements _Agent {
  const _$_Agent(
      {required this.firstName,
      required this.lastName,
      required this.midName,
      required this.login,
      required this.password,
      required this.id});

  factory _$_Agent.fromJson(Map<String, dynamic> json) =>
      _$$_AgentFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String midName;
  @override
  final String login;
  @override
  final String password;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agent(firstName: $firstName, lastName: $lastName, midName: $midName, login: $login, password: $password, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Agent'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('midName', midName))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agent &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.midName, midName) || other.midName == midName) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, midName, login, password, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      __$$_AgentCopyWithImpl<_$_Agent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentToJson(
      this,
    );
  }
}

abstract class _Agent implements Agent {
  const factory _Agent(
      {required final String firstName,
      required final String lastName,
      required final String midName,
      required final String login,
      required final String password,
      required final String id}) = _$_Agent;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$_Agent.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get midName;
  @override
  String get login;
  @override
  String get password;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      throw _privateConstructorUsedError;
}
