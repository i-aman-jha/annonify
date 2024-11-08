import 'package:annonify/configs/Theme/dark_theme.dart';
import 'package:annonify/configs/Theme/light_theme.dart';
import 'package:annonify/configs/routes/app_router.dart';
import 'package:annonify/controller/theme_controller.dart';
import 'package:annonify/view/screens/auth/signIn/sign_in.dart';
import 'package:annonify/view/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Annonify',
        themeMode: themeController.themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
        getPages: AppRouter.routes,
        home: const HomePage(),
      );
    });
  }
}
