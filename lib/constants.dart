import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle bodyTextStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 26,
);
TextStyle headerTextStyle = TextStyle();
TextStyle subHeadingTextStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 50,
  //overflow: TextOverflow.visible,
);
TextStyle mobileBodyTextStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 20,
);
TextStyle mobileSubHeadingTextStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 35,
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

ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
  elevation: 10,
  primary: Color.fromARGB(45, 0, 140, 255),
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

class TagWidget extends StatelessWidget {
  final String tagText;
  const TagWidget(this.tagText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 10,
        top: 10,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(61, 255, 255, 255)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          tagText,
          style: bodyTextStyle.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}

enum MobilePages {
  intro,
  approach,
  about,
}

enum Approach { discuss, plan, build }
