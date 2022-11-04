import 'package:buildnow/Shared/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ValueSection extends StatelessWidget {
  const ValueSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 36, 36, 36),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        height: null,
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 100,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FittedBox(
                          child: Text(
                            "Realize",
                            style: GoogleFonts.passionOne(
                              color: backGroundTextColor,

                              fontWeight: FontWeight.bold,
                              fontSize: 100,
                              //overflow: TextOverflow.visible,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        //width: 900,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                ),
                                child: Divider(
                                  color: Color.fromARGB(123, 158, 158, 158),
                                  thickness: 0.5,
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Make it Tangible!\nFocused on taking your ideas from paper to product. I will ensure that you get a working product to ship to your current and future users.",
                                        textAlign: TextAlign.left,
                                        style: mobileBodyTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
