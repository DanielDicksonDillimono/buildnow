import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle bodyTextStyle = GoogleFonts.montserrat(
    color: Colors.white, fontWeight: FontWeight.w200, fontSize: 26);
TextStyle headerTextStyle = TextStyle();
TextStyle subHeadingTextStyle = GoogleFonts.montserrat(
  color: Colors.white,

  fontWeight: FontWeight.bold,
  fontSize: 50,
  //overflow: TextOverflow.visible,
);

ButtonStyle actionButtonStyle = ElevatedButton.styleFrom(
  elevation: 10,
  primary: Color.fromARGB(140, 0, 140, 255),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  minimumSize: Size(200, 50),
);

Color mainColor = Color.fromARGB(255, 38, 38, 38);
Color secondaryColor = Color.fromARGB(255, 36, 36, 36);
Color backGroundTextColor = Color.fromARGB(32, 255, 255, 255);

enum ImagePosition {
  top,
  center,
  bottom,
}
