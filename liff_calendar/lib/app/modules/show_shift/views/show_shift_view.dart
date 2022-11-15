import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/show_shift_controller.dart';

class ShowShiftView extends GetView<ShowShiftController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetBuilder<ShowShiftController>(
              init: ShowShiftController(),
              builder: (logic) {
                return logic.isLoading
                    ? CircularProgressIndicator()
                    : TableCalendar(
                    headerVisible: false,
                    selectedDayPredicate: (day) {
                      print('${day},${logic.selectedDays.contains(day)}');
                      return logic.selectedDays.contains(day);
                    },
                    focusedDay: logic.now,
                    firstDay: logic.firstDay,
                    lastDay: logic.lastDay);
              }),
          ElevatedButton(onPressed: ()=>Get.back(), child: Text('戻る')),
        ],
      ),
    );
  }
}
