import 'dart:async';

import 'package:buildnow/Shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
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

  bool animateButton = false;
  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   "Bring your\napp ideas\nto life.",
                              //   style: GoogleFonts.anton(
                              //     color: Colors.white,

                              //     // fontWeight: FontWeight.bold,
                              //     fontSize:
                              //         MediaQuery.of(context).size.width * 0.15,
                              //     //overflow: TextOverflow.visible,
                              //   ),
                              //   textAlign: TextAlign.left,
                              // ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Hi, I'm Daniel",
                                style: mobileBodyTextStyle,
                              ),
                              Text(
                                "I turn ideas into\nMobile and Web applications",
                                style: mobileSubHeadingTextStyle,
                              ),
                              // Text(
                              //   "Mobile and the Web applications",
                              //   style: mobileBodyTextStyle,
                              // ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Hero(
                                  tag: "ChatButton",
                                  child: ElevatedButton.icon(
                                    style: actionButtonStyle,
                                    onPressed: goToContactForm,
                                    icon: Icon(Icons.send),
                                    label: animateButton
                                        ? AnimatedTextKit(
                                            totalRepeatCount: 2,
                                            onFinished: (() => setState(() {
                                                  animateButton = false;
                                                })),
                                            animatedTexts: [
                                              TyperAnimatedText(
                                                "Let's chat",
                                                textStyle:
                                                    GoogleFonts.montserrat(
                                                  //fontSize: 50,
                                                  // fontSize: MediaQuery.of(
                                                  //             context)
                                                  //         .size
                                                  //         .width *
                                                  //     0.05,
                                                  fontWeight: FontWeight.w700,
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
