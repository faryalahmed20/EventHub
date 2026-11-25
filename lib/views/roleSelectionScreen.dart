import 'package:eventhub/constants/colors.dart';
import 'package:eventhub/controller/roleSelectionController.dart';
import 'package:eventhub/views/organizerLogin.dart';
import 'package:eventhub/views/userLogin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Roleselection extends StatefulWidget {
  Roleselection({super.key});

  @override
  State<Roleselection> createState() => _RoleselectionState();
}

class _RoleselectionState extends State<Roleselection> {
  final Roleselectioncontroller roleselectioncontroller =
      Get.put(Roleselectioncontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  "EventHub",
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Text(
                  "Discover .Learn .Connect",
                  style: TextStyle(
                    color: AppColors.darkSage,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Choose your Role",
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "SignIn to Continue",
                  style: TextStyle(
                    color: AppColors.darkSage,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    roleselectioncontroller.selectedrole.value = "User";
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.border,
                      border: Border.all(
                        color: AppColors.captionText,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person, color: AppColors.blue),
                        Obx(() {
                          final selectedRole =
                              roleselectioncontroller.selectedrole.value ==
                                  "User";

                          return Checkbox(
                            value: selectedRole,
                            onChanged: (checked) {
                              roleselectioncontroller.selectedrole.value =
                                  checked == true ? "User" : '';
                            },
                          );
                        }),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Continue as User",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blue,
                                ),
                              ),
                              Text(
                                "Explore Events and book tickets",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: AppColors.blue),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    roleselectioncontroller.selectedrole.value = "Organizer";
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.border,
                      border: Border.all(
                        color: AppColors.captionText,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: AppColors.blue,
                        ),
                        Obx(() {
                          final selectedRole =
                              roleselectioncontroller.selectedrole.value ==
                                  "Organizer";

                          return Checkbox(
                            value: selectedRole,
                            onChanged: (checked) {
                              roleselectioncontroller.selectedrole.value =
                                  checked == true ? "Organizer" : '';
                            },
                          );
                        }),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Continue as Organizer",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blue,
                                ),
                              ),
                              Text(
                                "Create and manage your events",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: AppColors.blue),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "You can Switch Roles by signing In With another account",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.captionText,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        final role = roleselectioncontroller.selectedrole.value;

                        if (role == "User") {
                          Get.offAll(() => Userlogin());
                        } else if (role == "Organizer") {
                          Get.offAll(() => Organizerlogin());
                        } else {
                          Get.snackbar(
                            "Select a role",
                            "Please select User or Organizer to continue.",
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}