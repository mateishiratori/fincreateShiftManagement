import 'package:get/get.dart';
import 'package:liff_calendar/app/data/shift_data_model/shift_data_model.dart';
import 'package:liff_calendar/app/mixin/calendar_mixin.dart';

import '../../../data/repository/shift_data_model_repository.dart';

class ShowShiftController extends GetxController with CalendarMixin{


  @override
  void onInit() async{
    initCalendar();
    await initShift();
    print(selectedDays);
    update();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
