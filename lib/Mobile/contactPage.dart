import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/Shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      timer.cancel();
      if (mounted) {
        (() {
          animateButton = true;
        });
      }
    });
    super.initState();
  }

  bool animateButton = false;
  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // //Me
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ready to build? Reach out and let's have a chat.",
                              style: mobileBodyTextStyle.copyWith(
                                color: Colors.black,
                              ),
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
                                        onFinished: (() => setState(() {
                                              animateButton = false;
                                            })),
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            "Let's chat",
                                            textStyle: GoogleFonts.montserrat(
                                              //fontSize: 50,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 50),
                                          )
                                        ],
                                      )
                                    : Text(
                                        "Let's chat",
                                        style: GoogleFonts.montserrat(
                                          //fontSize: 50,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),

                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(
                      CupertinoIcons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      "+31684555925",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        //overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline,
                      color: Colors.black,
                    ),
                    title: Text(
                      "info@buildnow.dev",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        //overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.buildingCircleArrowRight,
                      color: Colors.black,
                    ),
                    title: Column(
                      children: [
                        Text(
                          "Deeformed BV",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            //overflow: TextOverflow.visible,
                          ),
                        ),
                        Text(
                          "KVK 83590668",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            //overflow: TextOverflow.visible,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
