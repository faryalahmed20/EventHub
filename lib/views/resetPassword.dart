
import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/controller/resetController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final ResetPasswordController controller =
      Get.put(ResetPasswordController());

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

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

                // Back Button
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(height: 24),

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
                  "Forgot Password?",
                  style: GoogleFonts.sora(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(height: 12),

                // Description
                Text(
                  "Don't worry! Enter your email address "
                  "and we'll send you a link to reset your password.",
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
                      borderSide: BorderSide(
                        color: AppColors.border,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: AppColors.border,
                      ),
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

                const SizedBox(height: 28),

                // Send Reset Link Button
                SizedBox(
                  width: double.infinity,
                  height: 54,

                  child: ElevatedButton(
                    onPressed: () {
                      controller.resetPassword();
                      // Reset link functionality baad mein add karenge
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
                      "Send Reset Link",
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Back to Login
                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },

                    child: Text(
                      "Back to Login",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
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