import 'package:flutter/material.dart';
import 'package:flutter_line_liff/flutter_line_liff.dart';
import 'package:get/get.dart';

import '../constants.dart';

class LiffService extends GetxService{
  Future<FlutterLineLiff> init()async{
    await FlutterLineLiff().init(config: Config(liffId: liffId),successCallback: () {
      debugPrint('LIFF init success.');
    },
      errorCallback: (error) {
        debugPrint(
            'LIFF init error: ${error.name}, ${error.message}, ${error.stack}');
      },);
    return FlutterLineLiff();
  }
}