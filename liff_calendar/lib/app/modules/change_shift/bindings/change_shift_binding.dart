import 'package:get/get.dart';

import '../controllers/change_shift_controller.dart';

class ChangeShiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeShiftController>(
      () => ChangeShiftController(),
    );
  }
}
