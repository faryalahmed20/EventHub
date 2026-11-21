import 'dart:async';

import 'package:eventhub/views/roleSelectionScreen.dart';
import 'package:get/get.dart';

class Splashcontroller extends GetxController{
  Timer? _timer;
  @override
  void onReady() {
    _timer = Timer(Duration(seconds: 2), ()=> Roleselection());
    super.onReady();
  }
  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
  
}