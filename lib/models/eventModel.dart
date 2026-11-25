import 'package:get/get.dart';

class Eventmodel{
  final String event;
  final String category;
  final String venue;
  final String description;
  final int totalTickets;
  final double ticketPrice;

   const Eventmodel({
  required this.event,
  required this.category,
  required this.venue,
  required this.description,
  required this.totalTickets,
  required this.ticketPrice,
});
}

class MyEventController extends GetxController{
  final RxList<Eventmodel> events = <Eventmodel>[].obs;
  void addEvents(Eventmodel event){
    events.insert(0, event);
    update();
  }
}
