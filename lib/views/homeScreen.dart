import 'package:eventhub/constants/colors.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.primary,
        leading: Icon(Icons.menu,color: AppColors.primary,),
        title: Row(children: [Text("EventHub")],),
        actions: [
          Icon(Icons.notifications,color: AppColors.primary,),
        ],
        
        ),
      body: Column(
        children: [

        ],
      ),
     
     
    );
  }
}