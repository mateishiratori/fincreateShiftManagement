import 'package:get/get.dart';
import 'package:liff_calendar/app/mixin/calendar_mixin.dart';

import '../../../data/repository/shift_data_model_repository.dart';
import '../../../data/shift_data_model/shift_data_model.dart';

class ChangeShiftController extends GetxController with CalendarMixin {
  //TODO: Implement ChangeShiftController

  @override
  void onInit() async{
    initCalendar();
    await initShift();
    update();
    super.onInit();
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
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

  Future<void> sendShift() async {
    //Profile profile = await Get.find<FlutterLineLiff>().profile;
    final absenteeism = selectedDays.toList();
    ShiftDataModel shiftDataModel = ShiftDataModel(id: 'profile.userId',
        name: 'profile.displayName',
        absenteeism: absenteeism);
    print(shiftDataModel);
    await ShiftDataRepository().updateShift(shiftDataModel);
  }

}
