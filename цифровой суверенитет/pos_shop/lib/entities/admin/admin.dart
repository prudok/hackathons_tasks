import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';

@freezed
class Admin with _$Admin {
  const factory Admin({
    required String firstName,
    required String lastName,
    required String midName,
    required String login,
    required String password,
    required String id,
  }) = _Admin;

  factory Admin.fromJson(Map<String, Object?> json)
      => _$AdminFromJson(json);
}