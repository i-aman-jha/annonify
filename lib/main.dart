import 'package:annonify/config/Theme/dark_theme.dart';
import 'package:annonify/view/Screens/Chat/chat_details.dart';
import 'package:annonify/view/Screens/Chat/chat_screen.dart';
import 'package:annonify/view/screens/auth/signIn/sign_in.dart';
import 'package:annonify/view/screens/auth/signup/sign_up.dart';
import 'package:annonify/view/screens/auth/signup/widgets/choose_avatar.dart';
import 'package:annonify/view/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Annonify',
      theme: darkTheme,
      darkTheme: darkTheme,
      home: const SignInPage(),
    );
  }
}
