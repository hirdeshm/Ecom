import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final currentpageindex = 0.obs;

  final Pcontroller = PageController();

  void updatepageindex(index) {
    currentpageindex.value = index;
    print(currentpageindex.value);
    Pcontroller.jumpToPage(2);
  }
}
