import 'package:get/get.dart';

import '../data/repository/shift_data_model_repository.dart';
import '../data/shift_data_model/shift_data_model.dart';

mixin CalendarMixin {
  DateTime now = DateTime.now();
  DateTime firstDay = DateTime.now();
  DateTime lastDay = DateTime.now();
  Set<DateTime> selectedDays = <DateTime>{};
  bool isLoading = true;

  void initCalendar(){
    now = DateTime(now.year, now.month + 1, now.day);
    firstDay = DateTime(now.year, now.month, 1);
    lastDay = DateTime(now.year, now.month + 1, 1).add(Duration(days: -1));
    print(now);
    print(firstDay);
    print(lastDay);
    isLoading = false;

  }

  Future<void> initShift()async{
    ShiftDataModel shiftDataModel = await ShiftDataRepository().getShift();
    print(shiftDataModel.absenteeism);
    selectedDays = shiftDataModel.absenteeism.toSet();
  }
}