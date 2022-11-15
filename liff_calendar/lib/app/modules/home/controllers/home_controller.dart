import 'package:get/get.dart';
import 'package:liff_calendar/app/data/repository/shift_data_model_repository.dart';
import 'package:liff_calendar/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final now = DateTime.now();
  bool showMakeShift = false;
  bool isEnabledShift = false;
  @override
  void onInit() async{
    isEnabledShift = await ShiftDataRepository().isEnabledShift();
    if(now.day>=15 && now.day<=20){
      showMakeShift = true;
    }
    update();
    super.onInit();
  }

  void goMakeShift() => Get.toNamed(Routes.MAKE_SHIFT);
  void goChangeShift() => Get.toNamed(Routes.CHANGE_SHIFT);
  void goShowShift() => Get.toNamed(Routes.SHOW_SHIFT);
}
