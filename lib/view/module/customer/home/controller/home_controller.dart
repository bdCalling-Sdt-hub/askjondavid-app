import 'package:get/get.dart';

class HomeController extends GetxController{

  ///====== BottomNavBar========
  var currentIndex = 0.obs;

  void updateIndex(int index){
    currentIndex.value= index;
  }

}