import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/views/homeScreen.dart';
import 'package:eventhub/views/myBookings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';


class BookingConfirmedScreen extends StatelessWidget {
  const BookingConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            
            Column(
              children: [

                const SizedBox(height: 140),

                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green.shade100,
                  child: const Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 35,
                  ),
                ),

                const SizedBox(height: 15),

                Text(
                  "Booking Confirmed",
                  style: GoogleFonts.sora(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(height: 8),

      
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.dmSans(
                      fontSize: 11,
                      color: AppColors.captionText,
                    ),
                    children: const [
                      TextSpan(
                        text: "ID EHT12345678\n",
                      ),
                      TextSpan(
                        text: "Your ticket is ready",
                      ),
                    ],
                  ),
                ),
              ],
            ),

            
            Column(
              children: [

                
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(()=>Mybookings());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "View Ticket",
                      style: GoogleFonts.dmSans(fontSize: 11),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(()=> HomeScreen ());

                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.surface,
                      foregroundColor: AppColors.primary,
                      side: BorderSide(color: AppColors.border),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Back to Home",
                      style: GoogleFonts.dmSans(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}