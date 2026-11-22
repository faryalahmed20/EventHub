import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/views/roleSelectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Get.off(() => Roleselection());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashGradientEnd,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.splashGradientStart,
                AppColors.splashGradientEnd,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'H',
                      style: GoogleFonts.sora(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.sora(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                      children: const [
                        TextSpan(text: 'Event'),
                        TextSpan(
                          text: 'Hub',
                          style: TextStyle(color: AppColors.logoAccent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Discover • Learn • Connect',
                    style: GoogleFonts.dmSans(
                      fontSize: 13,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'Your Gateway to Amazing Events',
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    color: AppColors.white,
                  ),
                ),
              ),
              const CircularProgressIndicator(color: AppColors.white),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}