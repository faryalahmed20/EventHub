import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/views/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String userName = "Ayesha Hassan";
    String email = "ayesha@email.com";

    List<String> nameParts = userName.trim().split(" ");
    String initials = nameParts[0][0];

    if (nameParts.length > 1) {
      initials = initials + nameParts[1][0];
    }

    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 40),

             
              CircleAvatar(
                radius: 29,
                backgroundColor: AppColors.primary,
                child: Text(
                  initials.toUpperCase(),
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              
              Text(
                userName,
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),

           
              Text(
                email,
                style: GoogleFonts.dmSans(
                  fontSize: 10,
                  color: AppColors.captionText,
                ),
              ),

              const SizedBox(height: 15),

              
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 17,
                          color: AppColors.primary,
                        ),
                        Text(
                          "1",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          "Bookings",
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: AppColors.captionText,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        const Icon(
                          Icons.star_border,
                          size: 17,
                          color: AppColors.primary,
                        ),
                        Text(
                          "4.8",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          "Rating",
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: AppColors.captionText,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        const Icon(
                          Icons.wallet_outlined,
                          size: 17,
                          color: AppColors.primary,
                        ),
                        Text(
                          "Rs. 0",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          "Wallet",
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: AppColors.captionText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
             
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.calendar_today,
                  size: 17,
                  color: AppColors.primary,
                ),
                title: Text(
                  "My Bookings",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              // My Events
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.star_border,
                  size: 17,
                  color: AppColors.primary,
                ),
                title: Text(
                  "My Events",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              
              InkWell(
                onTap: (){
                  Get.to(()=>NotificationsScreen());
                },
                child: ListTile(
                  dense: true,
                  leading: const Icon(
                    Icons.notifications_none,
                    size: 17,
                    color: AppColors.primary,
                  ),
                  title: Text(
                    "Notifications",
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.chevron_right,
                        size: 18,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              // Payment Methods
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.credit_card,
                  size: 17,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Payment Methods",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              // Dark Mode
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.brightness_6_outlined,
                  size: 17,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Dark Mode: Off",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              // Help & Support
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.help_outline,
                  size: 17,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Help & Support",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              // About EventHub
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.info_outline,
                  size: 17,
                  color: AppColors.primary,
                ),
                title: Text(
                  "About EventHub",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
                //ka matlab ListTile ke right side par widget show karna. Hum yahan arrow > laga rahe hain, jo indicate karta hai ke is item ke andar next screen/details ho sakti hain.
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              Divider(color: AppColors.border, height: 1),

              const SizedBox(height: 10),

              // Logout Button
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: GoogleFonts.dmSans(
                      fontSize: 11,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),

      
    );
  }
}
