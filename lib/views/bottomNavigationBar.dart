
import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/views/explore.dart';


import 'package:eventhub/views/homeScreen.dart';

import 'package:eventhub/views/myBookings.dart';

import 'package:eventhub/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  final List<Widget> screens = [];
  RxInt currentindex = 0.obs;

  @override
  void initState() {
    screens.addAll([HomeScreen(),ExploreEvents(),Mybookings(),ProfileScreen()]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: Obx(()=>screens[currentindex.value]),
      bottomNavigationBar:Obx(()=>BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex.value,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.mutedText,
       
        items: [
          
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_num_outlined),label: "My Bookings"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],
      onTap: (value) {
        currentindex.value = value;
      },
      
      ),
    ));
  }
}