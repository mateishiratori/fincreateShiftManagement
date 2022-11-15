import 'package:get/get.dart';

import '../controllers/show_shift_controller.dart';

class ShowShiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowShiftController>(
      () => ShowShiftController(),
    );
  }
}
