import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  RxBool isPasswordHidden = true.obs;
  RxBool isLoading = false.obs;


  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }


  void login() {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter email and password",
      );
      return;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}