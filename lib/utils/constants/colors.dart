
import 'package:flutter/material.dart';

class Tcolors {
  Tcolors._();

  //app basic color
  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe24b);
  static const Color accent = Color(0xffb0c7ff);

  //gradient color
  static const Gradient lineargrident =
      LinearGradient(begin: Alignment(0, 0), end: Alignment(0.7, 0.7), colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);
  //text color
  static const Color textprimary = Color(0xff333333);
  static const Color textsecondary = Color(0xff6c7570);
  static const Color textwhite = Colors.white;

  //background
  static const Color light = Color(0xff333333);
  static const Color dark = Color(0xff6c7570);
  static const Color primarybackground = Colors.white;

  //Background conatiner color
}
