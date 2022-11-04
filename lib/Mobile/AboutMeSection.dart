import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buildnow/Shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

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
                        Text(
                          "ABOUT\nME",
                          style: GoogleFonts.passionOne(
                            color: backGroundTextColor,

                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                            //overflow: TextOverflow.visible,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Icon(
                          CupertinoIcons.person_alt,
                          size: 200,
                          color: Color.fromARGB(36, 255, 0, 0),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              //width: 900,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                        ),
                                        child: Divider(
                                          color: Color.fromARGB(
                                              123, 158, 158, 158),
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "As a child I have always been intrigued by technology and how things work. I can remember my first big purchase, a stack of “Growing up with Science” encyclopaedias. I was 9 at that time.\nSince my dreams to become a fighter pilot like my father has not come as early as I desired, I buried my head into learning other things like programming and human behaviour.",
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              //width: 900,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                        ),
                                        child: Divider(
                                          color: Color.fromARGB(
                                              123, 158, 158, 158),
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "Moved to the Netherlands to study Creative Technology. After my study, I worked as an embedded software engineer and application software developer. My stint as Software Developer exposed me to working in relatively large teams and collaborating with individuals of varying expertise",
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              //width: 900,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                        ),
                                        child: Divider(
                                          color: Color.fromARGB(
                                              123, 158, 158, 158),
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                "Buildnow is my way of working with people to break down their problems and build a suitable solution for it in form of a mobile or web application.\n\nMy other interest include: motorsport, comics, animations, working out  and sketching. And, yeah, talking nonstop about cars and planes.",
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
