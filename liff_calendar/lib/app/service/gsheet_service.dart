import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:get/get.dart';

import '../constants.dart';

class GsheetService extends GetxService{
  Future<Spreadsheet> init()async{
    final gsheets = GSheets(credentials);
    final ss = await gsheets.spreadsheet(sheetId);
    return ss;
  }
}