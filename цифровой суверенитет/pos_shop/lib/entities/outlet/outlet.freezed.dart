// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Outlet _$OutletFromJson(Map<String, dynamic> json) {
  return _Outlet.fromJson(json);
}

/// @nodoc
mixin _$Outlet {
  String get name => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCopyWith<Outlet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCopyWith<$Res> {
  factory $OutletCopyWith(Outlet value, $Res Function(Outlet) then) =
      _$OutletCopyWithImpl<$Res, Outlet>;
  @useResult
  $Res call({String name, String shopId, String id});
}

/// @nodoc
class _$OutletCopyWithImpl<$Res, $Val extends Outlet>
    implements $OutletCopyWith<$Res> {
  _$OutletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shopId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OutletCopyWith<$Res> implements $OutletCopyWith<$Res> {
  factory _$$_OutletCopyWith(_$_Outlet value, $Res Function(_$_Outlet) then) =
      __$$_OutletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String shopId, String id});
}

/// @nodoc
class __$$_OutletCopyWithImpl<$Res>
    extends _$OutletCopyWithImpl<$Res, _$_Outlet>
    implements _$$_OutletCopyWith<$Res> {
  __$$_OutletCopyWithImpl(_$_Outlet _value, $Res Function(_$_Outlet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shopId = null,
    Object? id = null,
  }) {
    return _then(_$_Outlet(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
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
class _$_Outlet with DiagnosticableTreeMixin implements _Outlet {
  const _$_Outlet({required this.name, required this.shopId, required this.id});

  factory _$_Outlet.fromJson(Map<String, dynamic> json) =>
      _$$_OutletFromJson(json);

  @override
  final String name;
  @override
  final String shopId;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Outlet(name: $name, shopId: $shopId, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Outlet'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('shopId', shopId))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Outlet &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, shopId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutletCopyWith<_$_Outlet> get copyWith =>
      __$$_OutletCopyWithImpl<_$_Outlet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutletToJson(
      this,
    );
  }
}

abstract class _Outlet implements Outlet {
  const factory _Outlet(
      {required final String name,
      required final String shopId,
      required final String id}) = _$_Outlet;

  factory _Outlet.fromJson(Map<String, dynamic> json) = _$_Outlet.fromJson;

  @override
  String get name;
  @override
  String get shopId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_OutletCopyWith<_$_Outlet> get copyWith =>
      throw _privateConstructorUsedError;
}
