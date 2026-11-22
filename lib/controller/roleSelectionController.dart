import 'package:get/get.dart';

class Roleselectioncontroller extends GetxController{
  RxList roles = ["User","Organizer"].obs;
  RxBool isdone = true.obs;
  RxString selectedrole = ''.obs;
  void selectRole(String role){
    selectedrole.value = role;
   
  }
}
