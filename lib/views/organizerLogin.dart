import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/controller/loginController.dart';

import 'package:eventhub/views/organizersEventScreen.dart';
import 'package:eventhub/views/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Organizerlogin extends StatefulWidget {
  Organizerlogin({super.key});

  @override
  State<Organizerlogin> createState() => _OrganizerloginState();
}

class _OrganizerloginState extends State<Organizerlogin> {
  final LoginController controller = Get.put(LoginController());
  static const Organizeremail = "organizer@gmail.com";
  static const OrganizerPassword = "123456";

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

               
                Obx(
                  () => TextField(
                    controller: controller.passwordController,
                    obscureText: controller.isPasswordHidden.value,

                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      filled: true,
                      fillColor: AppColors.surface,

                     
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.togglePassword();
                        },
                        
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
                      final email = controller.emailController.text.trim().toLowerCase();
                      final password = controller.passwordController.text.trim();
                      if(email != Organizeremail){
                        Get.snackbar("Invalid Email", "Login with Registerd Email");
                      }
                      else if(password != OrganizerPassword){
                        Get.snackbar("Invalid Password", "Enter valid password");
                      }
                      else{
                        Get.snackbar("Success", "Login Successfully");
                      }
                      Get.offAll(()=>Organizerseventscreen());
                      return controller.login(); 
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

               
              ],
            ),
          ),
        ),
      ),
    );
  }
}