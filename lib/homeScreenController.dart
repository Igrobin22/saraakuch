import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreenController extends GetxController {
RxInt categoryCheck = 0.obs;
void getCategoryCheck(int check){
  categoryCheck.value=check;
}
bool selectedCategorycheck(int value){
 return categoryCheck.value==value? true : false;

}
  RxInt currentIndex = 0.obs;
  void slidervalueUpdater(int index) {
    currentIndex.value = index;
    update();
  }

  RxInt sliderValueReturn() {
    return currentIndex;
  }
}