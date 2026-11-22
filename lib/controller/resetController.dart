import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {

  // Email TextField ka data store karega
  final emailController = TextEditingController();

  // Loading state future API ke liye
  RxBool isLoading = false.obs;

  // Reset button ka logic
  void resetPassword() {

    // Email ke start/end spaces remove karna
    String email = emailController.text.trim();
 

  print("Entered Email: $email"); // temporary test
    // Check karna email empty toh nahi
    if (email.isEmpty) {
      Get.snackbar('Error', 'Please enter your email');
      return;
    }

    // Email format validate karna
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Error', 'Please enter a valid email');
      return;
    }

    // Filhal API nahi lagi, sirf testing message
    Get.snackbar(
      'Success',
      'Reset password UI is working!',
    );
  }

  @override
  void onClose() {
    // Controller close hone par memory clean karna
    emailController.dispose();
    super.onClose();
  }
}