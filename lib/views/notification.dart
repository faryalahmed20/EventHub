import 'package:eventhub/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
        ),
        title: Text(
          "Notifications",
          style: GoogleFonts.sora(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          children: [

            // Notification 1
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Your booking for Tech Summit 2026 is confirmed",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: AppColors.primary,
                ),
              ),
            ),

            // Notification 2 useeeee
            Container( 
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "AI Conference 2026 tickets are selling fast",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: AppColors.primary,
                ),
              ),
            ),

            // Notification 3  useeeeeeee
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Reminder: Tech Summit 2026 is on Dec 12",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}