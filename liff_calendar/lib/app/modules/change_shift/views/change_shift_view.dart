import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/change_shift_controller.dart';

class ChangeShiftView extends GetView<ChangeShiftController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetBuilder<ChangeShiftController>(
              init: ChangeShiftController(),
              builder: (logic) {
                return logic.isLoading
                    ? CircularProgressIndicator()
                    : TableCalendar(
                    headerVisible: false,
                    selectedDayPredicate: (day) =>
                        logic.selectedDays.contains(day),
                    onDaySelected: (selectedDay, focusedDay) =>
                        logic.onDaySelected(selectedDay, focusedDay),
                    focusedDay: logic.now,
                    firstDay: logic.firstDay,
                    lastDay: logic.lastDay);
              }),
          Row(
            children: [
              ElevatedButton(onPressed: ()=>Get.back(), child: Text('戻る')),
              GetBuilder<ChangeShiftController>(builder: (logic) {
                return ElevatedButton(onPressed: () =>logic.sendShift(), child: Text('送信'));
              }),
            ],
          )
        ],
      ),
    );
  }
}
