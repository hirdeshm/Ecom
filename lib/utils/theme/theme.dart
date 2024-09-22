
import 'package:google_fonts/google_fonts.dart';
import 'package:ecomflutter/utils/theme/custom_themes/texttheme.dart';
import 'package:flutter/material.dart';

class TApptheme{
  TApptheme._();

  static ThemeData Lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(TTexttheme.ligthttexttheme),

  );
  static ThemeData Darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: GoogleFonts.poppinsTextTheme(TTexttheme.darktexttheme),
  );

}