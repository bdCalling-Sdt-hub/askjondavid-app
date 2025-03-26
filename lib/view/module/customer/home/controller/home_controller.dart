import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController extends GetxController{

  ///====== BottomNavBar========
  var currentIndex = 0.obs;

  void updateIndex(int index){
    currentIndex.value= index;
  }

  ///====== Tab Bar==============
  int selectedIndex = 0;

  String get currentStatus {
    switch (selectedIndex) {
      case 0:
        return "index 0";
      case 1:
        return "index 1";
      default:
        return "index 2";
    }
  }
  int tabIndex=0;
  void updatedSelectedIndex(int index) {
    selectedIndex = index;
    tabIndex=index;
    update();
  }

  ///====== Booking Tab Bar==============
  RxInt bookingTabSelectedIndex = 0.obs;

  // String get currentStatus {
  //   switch (selectedIndex) {
  //     case 0:
  //       return "index 0";
  //     case 1:
  //       return "index 1";
  //     default:
  //       return "index 2";
  //   }
  // }

  RxInt bookingTabIndex=0.obs;
  void updatedBookingTabSelectedIndex(int index) {
    bookingTabSelectedIndex.value = index;
    bookingTabIndex.value=index;
    update();
  }


  ///====== Google map ===========

  late GoogleMapController mapController;
  final Set<Marker> markers = <Marker>{}.obs;

  // initial Camera position
   CameraPosition initialPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // San Francisco
    zoom: 10,
  );

  // update camera position
  void updateCameraPosition(CameraPosition position){
    mapController.animateCamera(CameraUpdate.newCameraPosition(position));
  }
  // Method to add marker
  void addMarker(LatLng position){
    markers.add(
      Marker(
        markerId: MarkerId(position.toString()),
        position: position,
        infoWindow: InfoWindow(title: 'Marker', snippet: 'This is location')
      )
    );
  }

  // Calendar
  var selectedDate = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    mapController.dispose();
    super.onClose();
  }

}