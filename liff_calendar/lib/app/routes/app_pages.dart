import 'package:get/get.dart';

import '../modules/change_shift/bindings/change_shift_binding.dart';
import '../modules/change_shift/views/change_shift_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/make_shift/bindings/make_shift_binding.dart';
import '../modules/make_shift/views/make_shift_view.dart';
import '../modules/show_shift/bindings/show_shift_binding.dart';
import '../modules/show_shift/views/show_shift_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAKE_SHIFT,
      page: () => MakeShiftView(),
      binding: MakeShiftBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_SHIFT,
      page: () => ChangeShiftView(),
      binding: ChangeShiftBinding(),
    ),
    GetPage(
      name: _Paths.SHOW_SHIFT,
      page: () => ShowShiftView(),
      binding: ShowShiftBinding(),
    ),
  ];
}
