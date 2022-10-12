import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MainMobileView extends StatefulWidget {
  const MainMobileView({Key? key}) : super(key: key);

  @override
  State<MainMobileView> createState() => _MainMobileViewState();
}

class _MainMobileViewState extends State<MainMobileView> {
  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.vertical);
  bool animateButton = false;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      timer.cancel();
      setState(() {
        animateButton = true;
      });
    });
    super.initState();
  }

  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 36, 36, 36),
      //width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Intro Section
            Container(
              height: MediaQuery.of(context).size.height,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    "me.jpg",
                  ).image,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(178, 38, 38, 38),
                    BlendMode.darken,
                  ),
                ),
              ),
              //  color: Color.fromARGB(255, 38, 38, 38),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // //Me
                              Container(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  bottom: 50,
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bring your\napp ideas\nto life.",
                                        style: GoogleFonts.passionOne(
                                          color: Colors.white,

                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          //overflow: TextOverflow.visible,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "Hi, I'm",
                                        style: bodyTextStyle.copyWith(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05),
                                      ),
                                      Text(
                                        "Daniel Dickson",
                                        style: subHeadingTextStyle.copyWith(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1),
                                      ),
                                      Text(
                                        "I build Mobile and the Web applications",
                                        style: bodyTextStyle.copyWith(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: ElevatedButton.icon(
                                          style: actionButtonStyle,
                                          onPressed: goToContactForm,
                                          icon: Icon(Icons.send),
                                          label: animateButton
                                              ? AnimatedTextKit(
                                                  totalRepeatCount: 2,
                                                  onFinished: (() =>
                                                      setState(() {
                                                        animateButton = false;
                                                      })),
                                                  animatedTexts: [
                                                    TyperAnimatedText(
                                                      "Let's chat",
                                                      textStyle: GoogleFonts
                                                          .montserrat(
                                                        //fontSize: 50,
                                                        // fontSize: MediaQuery.of(
                                                        //             context)
                                                        //         .size
                                                        //         .width *
                                                        //     0.05,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                      speed: const Duration(
                                                          milliseconds: 50),
                                                    ),
                                                  ],
                                                )
                                              : Text(
                                                  "Let's chat",
                                                  style: GoogleFonts.montserrat(
                                                    //fontSize: 50,
                                                    // fontSize:
                                                    //     MediaQuery.of(context)
                                                    //             .size
                                                    //             .width *
                                                    //         0.05,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

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

                              // Container(
                              //   padding: EdgeInsets.only(top: 10),
                              //   child: ListTile(
                              //     leading: Icon(
                              //       CupertinoIcons.phone,
                              //       color: Color.fromARGB(100, 255, 255, 255),
                              //     ),
                              //     title: Text(
                              //       "+31684555925",
                              //       textAlign: TextAlign.center,
                              //       style: GoogleFonts.montserrat(
                              //         color: Colors.white,
                              //         fontWeight: FontWeight.w300,
                              //         fontSize: 15,
                              //         //overflow: TextOverflow.visible,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: EdgeInsets.only(top: 10),
                              //   child: ListTile(
                              //     leading: Icon(
                              //       Icons.mail_outline,
                              //       color: Color.fromARGB(100, 255, 255, 255),
                              //     ),
                              //     title: Text(
                              //       "info@buildnow.dev",
                              //       textAlign: TextAlign.center,
                              //       style: GoogleFonts.montserrat(
                              //         color: Colors.white,
                              //         fontWeight: FontWeight.w300,
                              //         fontSize: 15,
                              //         //overflow: TextOverflow.visible,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: EdgeInsets.only(top: 10),
                              //   child: ListTile(
                              //     leading: Icon(
                              //       FontAwesomeIcons.buildingCircleArrowRight,
                              //       color: Color.fromARGB(100, 255, 255, 255),
                              //     ),
                              //     title: Column(
                              //       children: [
                              //         Text(
                              //           "Deeformed BV",
                              //           textAlign: TextAlign.center,
                              //           style: GoogleFonts.montserrat(
                              //             color: Colors.white,
                              //             fontWeight: FontWeight.w300,
                              //             fontSize: 15,
                              //             //overflow: TextOverflow.visible,
                              //           ),
                              //         ),
                              //         Text(
                              //           "KVK 83590668",
                              //           textAlign: TextAlign.center,
                              //           style: GoogleFonts.montserrat(
                              //             color: Colors.white,
                              //             fontWeight: FontWeight.w300,
                              //             fontSize: 15,
                              //             //overflow: TextOverflow.visible,
                              //           ),
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
          //My approach
        ),
      ),
    );
  }
}
