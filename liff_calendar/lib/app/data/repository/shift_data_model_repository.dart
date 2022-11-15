import 'package:get/get.dart';
import 'package:gsheets/gsheets.dart';
import 'package:liff_calendar/app/data/shift_data_model/shift_data_model.dart';
import 'package:liff_calendar/app/formatter/date_formatter.dart';
import 'package:liff_calendar/app/mixin/liff_mixin.dart';
import 'package:liff_calendar/app/mixin/sheet_mixin.dart';


class ShiftDataRepository with SheetMixin, liffMixin{
  Future<void> sendShift(ShiftDataModel shiftDataModel)async{
    Worksheet worksheet = await getWorkSheet();
    List<String> row = [shiftDataModel.id,shiftDataModel.name];
    List<String> absenteeism = shiftDataModel.absenteeism.map((e) =>outputFormat.format(e)).toList();
    row.addAll(absenteeism);
    worksheet.values.appendRow(row);
  }

  Future<void> updateShift(ShiftDataModel shiftDataModel)async{
    Worksheet worksheet = await getWorkSheet();
    List<String> row = [shiftDataModel.id,shiftDataModel.name];
    List<String> absenteeism = shiftDataModel.absenteeism.map((e) =>outputFormat.format(e)).toList();
    final id = await getUserID();
    List<Cell> cells = await worksheet.cells.findByValue(id);
    int rowNum = cells.first.row;
    row.addAll(absenteeism);
    worksheet.values.insertRow(rowNum, row);
  }

  Future<ShiftDataModel> getShift()async{
    print('callGet');
    Worksheet worksheet = await getWorkSheet();
    final id = await getUserID();
    List<Cell> cells = await worksheet.cells.findByValue(id);
    int rowNum = cells.first.row;
    List<String> row = await worksheet.values.row(rowNum);
    print(rowNum);
    print(row);
    List<DateTime> absenteeism = row.sublist(2,row.length).map((e) {
      final epoch = new DateTime(1899,12,30);
      final utcDate = epoch.add(new Duration(days: int.parse(e))).toUtc();
      return utcDate.add(new Duration(hours: 9));
    }).toList();
    print(absenteeism);
    ShiftDataModel shiftDataModel = ShiftDataModel(id: row[0], name: row[1], absenteeism: absenteeism);
    print(shiftDataModel);
    return shiftDataModel;
  }

  Future<bool> isEnabledShift()async{
    Worksheet worksheet = await getWorkSheet();
    final id = await getUserID();
    List<Cell> cells = await worksheet.cells.findByValue(id);
    return cells.length==0?false:true;
  }

}