import 'package:flutter_line_liff/flutter_line_liff.dart';
import 'package:get/get.dart';
import 'package:liff_calendar/app/data/repository/shift_data_model_repository.dart';
import 'package:liff_calendar/app/data/shift_data_model/shift_data_model.dart';
import 'package:liff_calendar/app/mixin/calendar_mixin.dart';

class MakeShiftController extends GetxController with CalendarMixin {


  @override
  void onInit() {
    initCalendar();
    update();
    super.onInit();
  }

  void onDaySelected(DateTime selectedDay,DateTime focusedDay){
    focusedDay = selectedDay;
    if (selectedDays.contains(selectedDay)) {
      selectedDays.remove(selectedDay);
    } else {
      selectedDays.add(selectedDay);
    }
    print(selectedDays);
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void>sendShift()async{
    //Profile profile = await Get.find<FlutterLineLiff>().profile;
    final absenteeism = selectedDays.toList();
    ShiftDataModel shiftDataModel = ShiftDataModel(id: 'profile.userId', name: 'profile.displayName', absenteeism: absenteeism);
    print(shiftDataModel);
    await ShiftDataRepository().sendShift(shiftDataModel);
  }
}
