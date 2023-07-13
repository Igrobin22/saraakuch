import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CheckoutScreenController extends GetxController{
  RxInt selected = 0.obs;
  void selectedIndex(int index){
    selected.value = index;
  }
  bool getSelected(int index){

  return selected.value==index? true:false;
  }
}