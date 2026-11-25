
import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/views/bookTickets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.fromLTRB(18, 54, 18, 0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/event image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 19,
                            backgroundColor: AppColors.black40,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              size: 16,
                              color: AppColors.white,
                            ),
                          ),
                          CircleAvatar(
                            radius: 19,
                            backgroundColor: AppColors.black40,
                            child: Icon(
                              Icons.favorite,
                              size: 18,
                              color: AppColors.accentRed,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.sageLight,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: const Text(
                              'Tech',
                              style: TextStyle(
                                color: AppColors.success,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Tech Summit 2026',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 16,
                                color: AppColors.mutedText,
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Dec 12, 2026 • 6:00 PM',
                                  style: TextStyle(
                                    color: AppColors.mutedText,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 16,
                                color: AppColors.mutedText,
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Expo Center, Karachi',
                                  style: TextStyle(
                                    color: AppColors.mutedText,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'About this event',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Join Karachi's tech community for talks, hands-on "
                            "sessions and networking. Innovate. Connect. Grow.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.mutedText,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 8, 18, 14),
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(
                            color: AppColors.mutedText,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Rs. 2,000',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(()=>BookTickets());
                      },
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: AppColors.primary,
                        disabledForegroundColor: AppColors.onPrimary,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Book Tickets'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
