import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

@freezed
class Agent with _$Agent {
  const factory Agent({
    required String firstName,
    required String lastName,
    required String midName,
    required String login,
    required String password,
    required String id,
  }) = _Agent;

  factory Agent.fromJson(Map<String, Object?> json) => _$AgentFromJson(json);
}
