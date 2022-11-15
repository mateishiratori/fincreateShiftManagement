import 'package:flutter_line_liff/flutter_line_liff.dart';
import 'package:get/get.dart';

mixin liffMixin{
  Future<String> getUserID()async{
    String? id = await Get.find<FlutterLineLiff>().id;
    id??='profile.userId';
    print(id);
    return 'profile.userId';
  }
}