import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController{
  RxInt index = 0.obs;
 void bottomNaviCheck(int currentIndex){
   index.value = currentIndex;

 }
}