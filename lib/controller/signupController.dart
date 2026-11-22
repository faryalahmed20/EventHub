import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  // TextFields ka data store karne ke liye
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Password hide/show karne ke liye reactive variables
  RxBool isPasswordHidden = true.obs;
  RxBool isConfirmPasswordHidden = true.obs;

  // Loading state (future mein API ke liye)
  RxBool isLoading = false.obs;

  // Password visibility toggle
  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleConfirmPassword() {
    isConfirmPasswordHidden.value =
        !isConfirmPasswordHidden.value;
  }

  // Signup button ka logic
  void signup() {
    if (nameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
    }
    //Ye GetX ka built-in helper function hai jo check karta hai ke email ka format valid lag raha hai ya nahi.
    if (!GetUtils.isEmail(emailController.text.trim())) {
      Get.snackbar('Error', 'Please enter a valid email');
      return;
    }

    if (passwordController.text !=
        confirmPasswordController.text) {
      Get.snackbar('Error', 'Passwords do not match');
      return;
    }

    Get.snackbar('Success', 'Signup UI is working!');
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}