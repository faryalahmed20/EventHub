import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //RxBool = GetX ka reactive Boolean.
  //.obs = variable ko observable/reactive banata hai, yani uski value change hone par usse observe karne wali UI update ho sakti hai
  RxBool isPasswordHidden = true.obs;
  RxBool isLoading = false.obs;

  // Password show / hide
  //GetX ke RxBool mein actual Boolean value .value se access/change karte hain:
  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  // Temporary login (without API)
  void login() {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter email and password",
      );
      return;
    }

    Get.snackbar(
      "Success",
      "Login UI is working!",
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}