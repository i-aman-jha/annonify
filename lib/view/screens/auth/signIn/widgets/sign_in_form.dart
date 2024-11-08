import 'package:annonify/configs/Theme/colors.dart';
import 'package:annonify/controller/auth/sign_in_controller.dart';
import 'package:annonify/controller/theme_controller.dart';
import 'package:annonify/utils/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    final ThemeController themeController = Get.find<ThemeController>();
    Color textHeading = (themeController.isDark.value)
        ? DarkThemeColors.textHeading
        : LightThemeColors.textHeading;

    return Form(
      key: controller.signInFormKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              cursorColor: textHeading,
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              decoration: const InputDecoration(
                hintText: "E-mail",
              ),
              validator: (value) => Validator.validateEmail(value),
            ),
            const SizedBox(height: 15),
            Obx(
              () => TextFormField(
                cursorColor: textHeading,
                obscureText: controller.hidePassword.value,
                controller: controller.passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.hidePassword.value =
                          !controller.hidePassword.value;
                    },
                    child: Icon(controller.hidePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
                validator: (value) => Validator.validatePassword(value),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 60)),
                ),
                child: const Text("SIGN IN"),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("CREATE  ONE"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
