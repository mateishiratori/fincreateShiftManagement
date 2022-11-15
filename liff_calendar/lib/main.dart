import 'package:flutter/material.dart';
import 'package:flutter_line_liff/flutter_line_liff.dart';

import 'package:get/get.dart';
import 'package:liff_calendar/app/service/gsheet_service.dart';
import 'package:liff_calendar/app/service/liff_service.dart';

import 'app/constants.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async{
  await Get.putAsync(() => LiffService().init());
  await Get.putAsync(() => GsheetService().init());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

