import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_data_model.freezed.dart';
part 'shift_data_model.g.dart';
 @freezed
class ShiftDataModel with _$ShiftDataModel{
 const factory ShiftDataModel({
  required String id,
  required String name,
  required List<DateTime> absenteeism,
 })  = _ShiftDataModel;

 factory ShiftDataModel.fromJson(Map<String,dynamic> json) => _$ShiftDataModelFromJson(json);
}