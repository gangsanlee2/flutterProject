import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_flutter/ch16_table_calendar/models/schedule.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Logger {
  static void showToast(String massage) {
    Fluttertoast.showToast(
      msg: massage,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
