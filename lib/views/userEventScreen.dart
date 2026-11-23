import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/models/eventModel.dart';
import 'package:eventhub/views/createEvent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Usereventscreen extends StatefulWidget {
  const Usereventscreen({super.key});

  @override
  State<Usereventscreen> createState() => _OrganizerseventscreenState();
}

class _OrganizerseventscreenState extends State<Usereventscreen> {
  final eventController = Get.put(MyEventController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('My Events'),
        centerTitle: true,
        backgroundColor: AppColors.blue,
        foregroundColor: AppColors.border,
      ),
      body: GetBuilder<MyEventController>(
        builder: (controller) {
          final newevents = controller.events;
          
          if (newevents.isEmpty) {
            return const Center(
              child: Text('No Event found'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: newevents.length,
            itemBuilder: (context, index) {
              final item = newevents[index];
              
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/event image.png',
                        width: 76,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.event,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                          if (item.venue.isNotEmpty) ...[
                            const SizedBox(height: 4),
                            Text(item.venue),
                          ],
                          const SizedBox(height: 4),
                          Text(
                            'Ticket price: Rs ${item.ticketPrice.toStringAsFixed(2)}',
                          ),
                          Text('Total tickets: ${item.totalTickets}'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: ElevatedButton.icon(
          onPressed: () => Get.to(() => const Createevent()),
          icon: const Icon(Icons.add),
          label: const Text('Create event'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}