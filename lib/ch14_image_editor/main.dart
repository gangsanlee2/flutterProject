
import 'dart:io';

import 'package:hello_flutter/ch14_image_editor/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}
