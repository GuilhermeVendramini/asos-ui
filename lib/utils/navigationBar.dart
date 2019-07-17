import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void navigationBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
}
