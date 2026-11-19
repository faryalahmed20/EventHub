import 'package:eventhub/constants/colors.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mutedText,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 85,
            //   width: 85,
            //   decoration: BoxDecoration(
            //     color: AppColors.primary,
            //     borderRadius: BorderRadius.circular(24),
            //   ),
            //   child: const Icon(
            //     Icons.event_available_rounded,
            //     color: Colors.white,
            //     size: 45,
            //   ),
            // ),

            const SizedBox(height: 22),

            const Text(
              'EventHub',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'Discover. Connect. Experience.',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.background,
              ),
            ),

            const SizedBox(height: 35),

            SizedBox(
              height: 22,
              width: 22,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}