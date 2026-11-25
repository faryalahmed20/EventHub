import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/views/checkOut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookTickets extends StatefulWidget {
  BookTickets({super.key});

  @override
  State<BookTickets> createState() => _BookTicketsState();
}

class _BookTicketsState extends State<BookTickets> {
  TextEditingController controller = TextEditingController();
  RxInt count = 0.obs;
  RxInt amount = 0.obs;
  RxInt vipcount = 0.obs;
  RxInt vipamount = 0.obs;

  void increment() {
    count.value++;
    amount.value += 2000;
  }

  void decrement() {
    if (count.value > 0) {
      count.value--;
      amount.value -= 2000;
    }
  }

  void vipincrement() {
    vipcount.value++;
    vipamount.value += 4000;
  }

  void vipdecrement() {
    if (vipcount.value > 0) {
      vipcount.value--;
      vipamount.value -= 4000;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.primary,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new, size: 18),
        title: const Text(
          'Book Tickets',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 12),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            const Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Tech Summit 2026',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        size: 13,
                                        color: AppColors.mutedText,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          'Dec 12, 2026 • 6:00 PM',
                                          style: TextStyle(
                                            color: AppColors.mutedText,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 14,
                                        color: AppColors.mutedText,
                                      ),
                                      SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          'Expo Center, Karachi',
                                          style: TextStyle(
                                            color: AppColors.mutedText,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Select Tickets',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'General Pass',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Rs.2,000',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 17,
                              backgroundColor: AppColors.sageLight,
                              child: InkWell(
                                onTap: decrement,
                                child: Icon(
                                  Icons.remove,
                                  size: 16,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Obx(
                              () => Text(
                                '${count.value}',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            CircleAvatar(
                              radius: 17,
                              backgroundColor: AppColors.sageLight,
                              child: InkWell(
                                onTap: increment,
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'VIP Pass',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Rs. 4,000',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 17,
                              backgroundColor: AppColors.sageLight,
                              child: InkWell(
                                onTap: vipdecrement,
                                child: Icon(
                                  Icons.remove,
                                  size: 16,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Obx(
                              () => Text(
                                '${vipcount.value}',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            CircleAvatar(
                              radius: 17,
                              backgroundColor: AppColors.sageLight,
                              child: InkWell(
                                onTap: vipincrement,
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total Amount',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Obx(
                              () => Text(
                                'Rs. ${amount.value + vipamount.value}',
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => Checkout());
                  },
                  style: ElevatedButton.styleFrom(
                    disabledBackgroundColor: AppColors.primary,
                    disabledForegroundColor: AppColors.onPrimary,
                  ),
                  child: const Text('Confirm Booking'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}