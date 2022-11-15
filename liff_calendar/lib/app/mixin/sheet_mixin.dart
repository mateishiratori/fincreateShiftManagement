import 'package:flutter_line_liff/flutter_line_liff.dart';
import 'package:get/get.dart';
import 'package:gsheets/gsheets.dart';

mixin SheetMixin{
  final now = DateTime.now();

  String getSheetName(){
    return '${now.month+1}月LINEBot';
  }

  Future<Worksheet> getWorkSheet()async{
    final sheet = Get.find<Spreadsheet>();
    Worksheet? worksheet = sheet.worksheetByTitle(getSheetName());
    worksheet ??= await sheet.addWorksheet(getSheetName());
    return worksheet;
  }
}