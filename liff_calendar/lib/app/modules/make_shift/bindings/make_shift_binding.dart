import 'package:get/get.dart';

import '../controllers/make_shift_controller.dart';

class MakeShiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MakeShiftController>(
      () => MakeShiftController(),
    );
  }
}
