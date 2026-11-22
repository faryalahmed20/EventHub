
import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/controller/loginController.dart';
import 'package:eventhub/views/Signup.dart';
import 'package:eventhub/views/bottomNavigationBar.dart';
import 'package:eventhub/views/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Userlogin extends StatelessWidget {
  Userlogin({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.event,
                    color: AppColors.white,
                    size: 30,
                  ),
                ),

                const SizedBox(height: 28),

                // Heading
                Text(
                  "Welcome back!",
                  style: GoogleFonts.sora(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(height: 8),

                // Subtitle
                Text(
                  "Login to continue exploring amazing events.",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    color: AppColors.captionText,
                  ),
                ),

                const SizedBox(height: 32),

                // Email Label
                Text(
                  "Email",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(height: 8),

                // Email Field
                TextField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    filled: true,
                    fillColor: AppColors.surface,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: AppColors.border),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: AppColors.border),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: AppColors.primary,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Password Label
                Text(
                  "Password",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(height: 8),

                // Password Field
                /*Obx() kyun use kiya?
isPasswordHidden ek RxBool hai, yani reactive variable.
//////// Jab value true hogi → password hide hoga.
////////////////// Jab eye icon click hoga → togglePassword() value ko false karega.
///////////Obx() detect karega ke value change hui hai aur UI automatically rebuild hoga.
//////Password show/hide karne ke liye setState() ki zaroorat nahi.*/
                Obx(
                  () => TextField(
                    controller: controller.passwordController,
                    obscureText: controller.isPasswordHidden.value,

                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      filled: true,
                      fillColor: AppColors.surface,

                      // Eye Icon
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.togglePassword();
                        },
                        //: Icons.visibility, Ab eye icon bhi GetX ki reactive value se update hoga.
                        icon: Icon(
                          controller.isPasswordHidden.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.mutedText,
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: AppColors.border),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: AppColors.border),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                    Get.to(() => ResetPasswordScreen());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.dmSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 54,

                  child: ElevatedButton(
                    onPressed: () {
                      controller
                          .login(); 
                          Get.offAll(()=>Bottomnavigationbar());

        
                          // Login functionality baad mein add karenge
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),

                      elevation: 0,
                    ),

                    child: Text(
                      "Login",
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Don't have an account
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: AppColors.captionText,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Get.to(() => SignupScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}