// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShiftDataModel _$$_ShiftDataModelFromJson(Map<String, dynamic> json) =>
    _$_ShiftDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      absenteeism: (json['absenteeism'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$_ShiftDataModelToJson(_$_ShiftDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'absenteeism':
          instance.absenteeism.map((e) => e.toIso8601String()).toList(),
    };
