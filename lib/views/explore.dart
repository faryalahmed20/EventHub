import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/models/eventModel.dart';
import 'package:eventhub/views/eventDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreEvents extends StatelessWidget {
  ExploreEvents({super.key});

  final controller = Get.put(MyEventController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.primary,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(),
        title: const Text(
          'Explore Events',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.tune, size: 20),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: AppColors.border, width: 2),
                ),
                child: Expanded(
                  child: TextField(
                    style: TextStyle(color: AppColors.primary),
                    decoration: InputDecoration(
                      hintText: 'Search events',
                      hintStyle: TextStyle(color: AppColors.captionText),
                      border: InputBorder.none,
                      
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'All',
                      style: TextStyle(
                        color: AppColors.onPrimary,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Tech',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Workshops',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Expanded(
                child: Obx(() {
                  final events = <Eventmodel>[
                    const Eventmodel(
                      event: 'Tech Summit 2026',
                      category: 'Tech',
                      venue: 'Expo Center, Karachi',
                      description: 'Tech talks and networking in Karachi.',
                      totalTickets: 100,
                      ticketPrice: 2000,
                    ),
                    ...controller.events,
                  ];

                  return ListView.builder(
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final item = events[index];

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            Get.to(() => EventDetails());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.surface,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 76,
                                  height: 96,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/event image.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Text(
                                          item.event,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: AppColors.primary,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.category_outlined,
                                            size: 13,
                                            color: AppColors.mutedText,
                                          ),
                                          const SizedBox(width: 5),
                                          Expanded(
                                            child: Text(
                                              item.category,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: AppColors.mutedText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            size: 14,
                                            color: AppColors.mutedText,
                                          ),
                                          const SizedBox(width: 4),
                                          Expanded(
                                            child: Text(
                                              item.venue,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: AppColors.mutedText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Rs. ${item.ticketPrice.toStringAsFixed(2)}',
                                              style: const TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                            color: AppColors.mutedText,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
