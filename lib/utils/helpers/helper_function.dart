import 'package:flutter/material.dart';
class HelperFunction{

 static void TNavigator(BuildContext context,Widget widgets){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>widgets));
  }
}