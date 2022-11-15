import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (logic) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                if (logic.showMakeShift && !logic.isEnabledShift)
                  ElevatedButton(
                    child: Text('シフト作成'),
                    onPressed: ()=>logic.goMakeShift(),
                  ),
                if(logic.isEnabledShift)
                ElevatedButton(
                  child: Text('シフト変更'),
                  onPressed: ()=>logic.goChangeShift(),
                ),
                ElevatedButton(
                  child: Text('シフト表示'),
                  onPressed: ()=>logic.goShowShift(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
