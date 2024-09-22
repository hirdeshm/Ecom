import 'package:ecomflutter/features/auth/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OnBoardingPagecontroller extends GetxController{
  static OnBoardingPagecontroller get instance =>Get.find();

  final pageController = PageController();

  RxInt currentpageindex = 0.obs;


   void updatepageindicitator(index){
     currentpageindex.value = index;
   }
   void ondotclick(index){
     pageController.jumpToPage(index);
     print(index);

   }
   void onskip(){
     currentpageindex.value = 2;
     pageController.jumpToPage(2);
   }
   void onclicknext(BuildContext context){
     int page = currentpageindex.value +1;
     if(currentpageindex ==2){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
     }
     pageController.jumpToPage((page));

   }

}