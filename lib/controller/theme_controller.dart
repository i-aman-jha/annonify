import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final RxBool isDark = true.obs;

  ThemeMode get themeMode => isDark.value ? ThemeMode.dark : ThemeMode.light;
  
  void toggleTheme() {
    isDark.value = !isDark.value;
    ;
  }
}
