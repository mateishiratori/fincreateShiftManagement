// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shift_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShiftDataModel _$ShiftDataModelFromJson(Map<String, dynamic> json) {
  return _ShiftDataModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftDataModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<DateTime> get absenteeism => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftDataModelCopyWith<ShiftDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftDataModelCopyWith<$Res> {
  factory $ShiftDataModelCopyWith(
          ShiftDataModel value, $Res Function(ShiftDataModel) then) =
      _$ShiftDataModelCopyWithImpl<$Res, ShiftDataModel>;
  @useResult
  $Res call({String id, String name, List<DateTime> absenteeism});
}

/// @nodoc
class _$ShiftDataModelCopyWithImpl<$Res, $Val extends ShiftDataModel>
    implements $ShiftDataModelCopyWith<$Res> {
  _$ShiftDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? absenteeism = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      absenteeism: null == absenteeism
          ? _value.absenteeism
          : absenteeism // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShiftDataModelCopyWith<$Res>
    implements $ShiftDataModelCopyWith<$Res> {
  factory _$$_ShiftDataModelCopyWith(
          _$_ShiftDataModel value, $Res Function(_$_ShiftDataModel) then) =
      __$$_ShiftDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<DateTime> absenteeism});
}

/// @nodoc
class __$$_ShiftDataModelCopyWithImpl<$Res>
    extends _$ShiftDataModelCopyWithImpl<$Res, _$_ShiftDataModel>
    implements _$$_ShiftDataModelCopyWith<$Res> {
  __$$_ShiftDataModelCopyWithImpl(
      _$_ShiftDataModel _value, $Res Function(_$_ShiftDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? absenteeism = null,
  }) {
    return _then(_$_ShiftDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      absenteeism: null == absenteeism
          ? _value._absenteeism
          : absenteeism // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShiftDataModel implements _ShiftDataModel {
  const _$_ShiftDataModel(
      {required this.id,
      required this.name,
      required final List<DateTime> absenteeism})
      : _absenteeism = absenteeism;

  factory _$_ShiftDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftDataModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<DateTime> _absenteeism;
  @override
  List<DateTime> get absenteeism {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_absenteeism);
  }

  @override
  String toString() {
    return 'ShiftDataModel(id: $id, name: $name, absenteeism: $absenteeism)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._absenteeism, _absenteeism));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_absenteeism));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftDataModelCopyWith<_$_ShiftDataModel> get copyWith =>
      __$$_ShiftDataModelCopyWithImpl<_$_ShiftDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftDataModelToJson(
      this,
    );
  }
}

abstract class _ShiftDataModel implements ShiftDataModel {
  const factory _ShiftDataModel(
      {required final String id,
      required final String name,
      required final List<DateTime> absenteeism}) = _$_ShiftDataModel;

  factory _ShiftDataModel.fromJson(Map<String, dynamic> json) =
      _$_ShiftDataModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<DateTime> get absenteeism;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftDataModelCopyWith<_$_ShiftDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
