import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeskTopHomePage extends StatefulWidget {
  const DeskTopHomePage({Key? key}) : super(key: key);
  @override
  State<DeskTopHomePage> createState() => _DeskTopHomePageState();
}

class _DeskTopHomePageState extends State<DeskTopHomePage> {
  bool animationDone = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width * 0.5,
          //     child: Image.asset(
          //       "lana.PNG",
          //       //colorBlendMode: BlendMode.screen,
          //       //color: Color.fromARGB(25, 255, 255, 255),
          //       fit: BoxFit.cover,
          //       filterQuality: FilterQuality.medium,
          //     ),
          //   ),
          // ),
          Container(
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 100,
                      bottom: MediaQuery.of(context).size.height * 0.45,
                      //left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        AnimatedTextKit(
                          totalRepeatCount: 1,
                          onNext: (stage, done) {},
                          onFinished: () {
                            setState(() {
                              animationDone = true;
                            });
                          },
                          animatedTexts: [
                            TyperAnimatedText(
                              "Bring your app ideas\nto life.",
                              textStyle: GoogleFonts.passionOne(
                                color: Colors.white,

                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.10,
                                //overflow: TextOverflow.visible,
                              ),
                              textAlign: TextAlign.right,
                              speed: const Duration(milliseconds: 70),
                            ),
                          ],
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //     top: 20,
                        //   ),
                        //   child: ElevatedButton.icon(
                        //     style: actionButtonStyle,
                        //     onPressed: goToContactForm,
                        //     onHover: (hover) {
                        //       setState(() {
                        //         aboutToClick = hover;
                        //       });
                        //     },
                        //     icon: Icon(
                        //       Icons.arrow_downward,
                        //     ),
                        //     label: aboutToClick
                        //         ? AnimatedTextKit(
                        //             totalRepeatCount: 1,
                        //             animatedTexts: [
                        //               TyperAnimatedText(
                        //                 "EXPLORE",
                        //                 textStyle:
                        //                     GoogleFonts
                        //                         .montserrat(
                        //                   //fontSize: 50,
                        //                   fontWeight:
                        //                       FontWeight
                        //                           .w900,
                        //                 ),
                        //                 speed:
                        //                     const Duration(
                        //                         milliseconds:
                        //                             50),
                        //               )
                        //             ],
                        //           )
                        //         : Text(
                        //             "EXPLORE",
                        //             style: GoogleFonts
                        //                 .montserrat(
                        //               //fontSize: 50,
                        //               fontWeight:
                        //                   FontWeight.w900,
                        //             ),
                        //           ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
