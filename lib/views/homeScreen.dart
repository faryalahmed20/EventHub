import 'package:eventhub/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final events = [
      (
        title: 'Tech Summit 2026',
        date: 'Dec 12, 2026',
        venue: 'Expo Center, Karachi',
        price: 'Rs. 2,000',
        icon: Icons.favorite,
        iconColor: AppColors.accentRed,
      ),
      (
        title: 'AI Conference 2026',
        date: 'Dec 18, 2026',
        venue: 'Beach View, Karachi',
        price: 'Rs. 3,000',
        icon: Icons.favorite_border,
        iconColor: AppColors.mutedText,
      ),
      (
        title: 'UI/UX Workshop 2026',
        date: 'Dec 20, 2026',
        venue: 'Expo Center, Karachi',
        price: 'Rs. 1,500',
        icon: Icons.favorite_border,
        iconColor: AppColors.mutedText,
      ),
    ];

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.menu, color: AppColors.primary),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.hexagon_outlined, color: AppColors.primary, size: 22),
            SizedBox(width: 6),
            Text(
              'Event ',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Hub',
              style: TextStyle(
                color: AppColors.success,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(
              Icons.notifications_none_outlined,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 214,
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/event image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Tech Summit 2026',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Innovate. Connect. Grow.',
                          style: TextStyle(color: AppColors.white, fontSize: 12),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Dec 12, 2026\nExpo Center, Karachi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: AppColors.sage,
                      child: Icon(
                        Icons.arrow_forward,
                        size: 17,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All ',
                    style: TextStyle(
                      color: AppColors.success,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Column(
                        children: [
                          Icon(Icons.web_asset_outlined, color: AppColors.primary),
                          SizedBox(height: 6),
                          Text('Tech', style: TextStyle(color: AppColors.text)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Column(
                        children: [
                          Icon(Icons.tune, color: AppColors.primary),
                          SizedBox(height: 6),
                          Text(
                            'Workshops',
                            style: TextStyle(color: AppColors.text),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Events',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All ',
                    style: TextStyle(
                      color: AppColors.success,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              for (final event in events)
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.black05,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 76,
                        height: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/event image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                event.title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_today_outlined,
                                  color: AppColors.mutedText,
                                  size: 13,
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    event.date,
                                    style: const TextStyle(
                                      color: AppColors.mutedText,
                                      fontSize: 12,
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
                                  color: AppColors.mutedText,
                                  size: 13,
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    event.venue,
                                    style: const TextStyle(
                                      color: AppColors.mutedText,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 14),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  event.price,
                                  style: const TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  event.icon,
                                  color: event.iconColor,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}