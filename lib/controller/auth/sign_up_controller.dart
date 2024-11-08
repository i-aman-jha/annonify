import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final signUpFormKey = GlobalKey<FormState>();

  //TextField controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confPassController = TextEditingController();

  //Obscure text controller
  final RxBool hidePassword = true.obs;
  final RxBool hideConfPassword = true.obs;
}
