import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'outlet.freezed.dart';
part 'outlet.g.dart';

@freezed
class Outlet with _$Outlet {
  const factory Outlet({
    required String name,
    required String shopId,
    required String id,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, Object?> json)
      => _$OutletFromJson(json);
}