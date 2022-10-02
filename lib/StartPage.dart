import 'dart:async';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:buildnow/my_flutter_app_icons.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>
    with SingleTickerProviderStateMixin {
  double turns = 0.0;
  bool loading = true;
  double radius = 50;
  num angle = pi * 2;
  num angle2 = pi * 2 / 3;
  num angle3 = pi * 4 / 3;
  ImageProvider mobile = Image.asset("MobileView.png").image;
  //SvgPicture desktop = SvgPicture.asset("DeskTopViewBannerSvg.svg");
  bool aboutToClick = false;
  bool hoveringOver = false;

  @override
  void initState() {
    super.initState();
    startRotation();
  }

  @override
  void didUpdateWidget(covariant StartPage oldWidget) {
    radius = MediaQuery.of(context).size.width * 0.5;
    super.didUpdateWidget(oldWidget);
  }

  void startRotation() {
    Timer.periodic(Duration(milliseconds: 150), (timer) {
      if (loading = false) {
        timer.cancel();
      }
      setState(() {
        turns += 0.09;
        angle += pi / 8;
        angle2 += pi / 8;
        angle3 += pi / 8;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Scaffold(
            backgroundColor:
                hoveringOver ? Color.fromARGB(243, 25, 25, 25) : Colors.white,
            body: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   image:
                    //       MediaQuery.of(context).orientation == Orientation.landscape
                    //           ? Svg("DeskTopViewBannerSvg.svg")
                    //           : mobile,
                    //   fit: BoxFit.cover,
                    //   colorFilter: const ColorFilter.mode(
                    //     Color.fromARGB(204, 0, 0, 0),
                    //     BlendMode.darken,
                    //   ),
                    // ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 5, 18, 34),
                        // Color.fromARGB(255, 77, 77, 77),
                        // Color.fromARGB(255, 77, 77, 77),
                        Color.fromARGB(255, 43, 82, 128),
                      ],
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Center(
                        //   child: Stack(
                        //     children: [
                        //       // AnimatedRotation(
                        //       //   turns: turns,
                        //       //   duration: Duration(seconds: 1),
                        //       //   child: SizedBox(
                        //       //     height: 100,
                        //       //     child: Image.asset(
                        //       //       "BuildNowAppIcon.png",
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       //AnimatedBuilde
                        //       // Center(
                        //       //   child: Transform.translate(
                        //       //     offset: Offset(
                        //       //       radius * sin(angle),
                        //       //       radius * cos(angle),
                        //       //     ),
                        //       //     child: Hero(
                        //       //       tag: "Specify",
                        //       //       child: Icon(
                        //       //         MyFlutterApp.specifyicon,
                        //       //         color: Colors.white,
                        //       //         size: 40,
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Center(
                        //       //   child: Transform.translate(
                        //       //     offset: Offset(
                        //       //       radius * sin(angle2),
                        //       //       radius * cos(angle2),
                        //       //     ),
                        //       //     child: Hero(
                        //       //       tag: "Implement",
                        //       //       child: Icon(
                        //       //         MyFlutterApp.implement,
                        //       //         color: Colors.white,
                        //       //         size: 40,
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Center(
                        //       //   child: Transform.translate(
                        //       //     offset: Offset(
                        //       //       radius * sin(angle3),
                        //       //       radius * cos(angle3),
                        //       //     ),
                        //       //     child: Hero(
                        //       //       tag: "Design",
                        //       //       child: Icon(
                        //       //         MyFlutterApp.designicon,
                        //       //         color: Colors.white,
                        //       //         size: 50,
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Center(
                        //       //   child: Hero(
                        //       //     tag: "Buildnow",
                        //       //     child: Icon(
                        //       //       MyFlutterApp.buildnowiconsvg,
                        //       //       color: Colors.blue,
                        //       //     ),
                        //       //   ),
                        //       // )
                        //     ],
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 100,
                            bottom: MediaQuery.of(context).size.height * 0.45,
                            left: 20,
                          ),
                          child: Center(
                            child: Column(
                              // mainAxisAlignment: Main,
                              children: [
                                // aboutToClick
                                //     ? Column(
                                //         crossAxisAlignment:
                                //             CrossAxisAlignment.center,
                                //         children: [
                                //           Text(
                                //             "Bring your mobile app ideas to life.",
                                //             style: GoogleFonts.montserrat(
                                //               color: Colors.white,
                                //               fontWeight: FontWeight.bold,
                                //               fontSize: 70,
                                //               //overflow: TextOverflow.visible,
                                //             ),
                                //             textAlign: TextAlign.center,
                                //           ),
                                //           Text(
                                //             "Specify, Design, Build.",
                                //             style: GoogleFonts.montserrat(
                                //               color: Colors.white,
                                //               fontWeight: FontWeight.w100,
                                //               fontSize: 40,
                                //               //overflow: TextOverflow.visible,
                                //             ),
                                //             textAlign: TextAlign.center,
                                //           ),
                                //         ],
                                //       ) :
                                AnimatedTextKit(
                                  pause: const Duration(milliseconds: 50),
                                  //repeatForever: true,
                                  totalRepeatCount: 1,
                                  onNext: (stage, done) {
                                    //  print(stage);
                                  },
                                  animatedTexts: [
                                    // TyperAnimatedText(
                                    //   "Bring your mobile app ideas to life.",
                                    //   textStyle: TextStyle(
                                    //     color: Colors.white,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: 70,
                                    //     //overflow: TextOverflow.visible,
                                    //   ),
                                    //   textAlign: TextAlign.center,
                                    //   speed: const Duration(milliseconds: 70),
                                    // ),
                                    FadeAnimatedText(
                                      "Build",
                                      textStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 40,
                                        //overflow: TextOverflow.visible,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    FadeAnimatedText(
                                      "NOW!",
                                      textStyle: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        //overflow: TextOverflow.visible,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    // FadeAnimatedText(
                                    //   "Build",
                                    //   textStyle: GoogleFonts.montserrat(
                                    //     color: Colors.white,
                                    //     fontWeight: FontWeight.w100,
                                    //     fontSize: 40,
                                    //     //overflow: TextOverflow.visible,
                                    //   ),
                                    //   textAlign: TextAlign.center,
                                    // )
                                  ],
                                  onFinished: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/home',
                                    );
                                  },
                                ),
                                //     Container(
                                //       padding: EdgeInsets.only(
                                //   top: 20,
                                // ),
                                // child: ,
                                //     )
                                // Container(
                                //   padding: EdgeInsets.only(
                                //     top: 20,
                                //   ),
                                //   child: ElevatedButton.icon(
                                //     style: ElevatedButton.styleFrom(
                                //         elevation: 10,
                                //         primary: Colors.blue,
                                //         shape: RoundedRectangleBorder(
                                //           borderRadius:
                                //               BorderRadius.circular(20),
                                //         ),
                                //         minimumSize: Size(200, 50)),
                                //     onPressed: () {
                                //       Navigator.pushNamed(
                                //         context,
                                //         '/home',
                                //       );
                                //     },
                                //     onHover: (hover) {
                                //       setState(() {
                                //         aboutToClick = hover;
                                //       });
                                //     },
                                //     icon: Icon(
                                //       Icons.arrow_forward,
                                //     ),
                                //     label: aboutToClick
                                //         ? AnimatedTextKit(
                                //             totalRepeatCount: 1,
                                //             animatedTexts: [
                                //               TyperAnimatedText(
                                //                 "Build Now!",
                                //                 textStyle:
                                //                     GoogleFonts.montserrat(
                                //                   //fontSize: 50,
                                //                   fontWeight: FontWeight.w900,
                                //                 ),
                                //                 speed: const Duration(
                                //                     milliseconds: 50),
                                //               )
                                //             ],
                                //           )
                                //         : Text(
                                //             "Build Now!",
                                //             style: GoogleFonts.montserrat(
                                //               //fontSize: 50,
                                //               fontWeight: FontWeight.w900,
                                //             ),
                                //           ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // InkWell(
                //   onHover: (value) => setState(
                //     () {
                //       hoveringOver = value;
                //     },
                //   ),
                //   child: SizedBox(
                //     // decoration: BoxDecoration(
                //     //   color: hoveringOver
                //     //       ? Color.fromARGB(243, 4, 22, 36)
                //     //       : Colors.white,
                //     // ),

                //     width: MediaQuery.of(context).size.width * 0.5,
                //     child: Center(
                //       child: Stack(
                //         children: [
                //           Positioned(
                //             right: MediaQuery.of(context).size.width / 2 * 0.6,
                //             top: MediaQuery.of(context).size.height * 0.6,
                //             child: SvgPicture.network(
                //               "https://firebasestorage.googleapis.com/v0/b/buildnow-a116a.appspot.com/o/pic2.svg?alt=media&token=b83cf589-25cb-4a6d-bdc2-617337682127",
                //               placeholderBuilder: (context) => Text("No Image"),
                //               color: Colors.white.withOpacity(0.70),
                //               colorBlendMode: BlendMode.modulate,
                //               height: 100,
                //             ),
                //           ),
                //           Center(
                //             child: Container(
                //               padding: EdgeInsets.all(10),
                //               decoration: BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 color: Colors.white,
                //               ),
                //               child: CircleAvatar(
                //                 backgroundImage: Image.asset("me.jpg").image,
                //                 radius:
                //                     MediaQuery.of(context).size.width * 0.10,
                //               ),
                //             ),
                //           ),
                //           Positioned(
                //             left: MediaQuery.of(context).size.width / 2 * 0.6,
                //             bottom: MediaQuery.of(context).size.height * 0.6,
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 boxShadow: [
                //                   BoxShadow(
                //                     blurRadius: 20,
                //                     color: Color.fromARGB(97, 0, 0, 0),
                //                   ),
                //                 ],
                //               ),
                //               child: SvgPicture.network(
                //                 "https://firebasestorage.googleapis.com/v0/b/buildnow-a116a.appspot.com/o/pic.svg?alt=media&token=82cbec95-5cc5-4ec1-9570-e5cbf3ad7f13",
                //                 placeholderBuilder: (context) =>
                //                     Text("No Image"),
                //                 color: Colors.white.withOpacity(0.60),
                //                 colorBlendMode: BlendMode.modulate,
                //                 height: 150,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          )
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 5, 18, 34),
                      // Color.fromARGB(255, 77, 77, 77),
                      // Color.fromARGB(255, 77, 77, 77),
                      Color.fromARGB(255, 43, 82, 128),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Center(
                    //   child: Stack(
                    //     children: [
                    //       // AnimatedRotation(
                    //       //   turns: turns,
                    //       //   duration: Duration(seconds: 1),
                    //       //   child: SizedBox(
                    //       //     height: 100,
                    //       //     child: Image.asset(
                    //       //       "BuildNowAppIcon.png",
                    //       //     ),
                    //       //   ),
                    //       // ),
                    //       //AnimatedBuilde
                    //       // Center(
                    //       //   child: Transform.translate(
                    //       //     offset: Offset(
                    //       //       radius * sin(angle),
                    //       //       radius * cos(angle),
                    //       //     ),
                    //       //     child: Hero(
                    //       //       tag: "Specify",
                    //       //       child: Icon(
                    //       //         MyFlutterApp.specifyicon,
                    //       //         color: Colors.white,
                    //       //         size: 40,
                    //       //       ),
                    //       //     ),
                    //       //   ),
                    //       // ),
                    //       // Center(
                    //       //   child: Transform.translate(
                    //       //     offset: Offset(
                    //       //       radius * sin(angle2),
                    //       //       radius * cos(angle2),
                    //       //     ),
                    //       //     child: Hero(
                    //       //       tag: "Implement",
                    //       //       child: Icon(
                    //       //         MyFlutterApp.implement,
                    //       //         color: Colors.white,
                    //       //         size: 40,
                    //       //       ),
                    //       //     ),
                    //       //   ),
                    //       // ),
                    //       // Center(
                    //       //   child: Transform.translate(
                    //       //     offset: Offset(
                    //       //       radius * sin(angle3),
                    //       //       radius * cos(angle3),
                    //       //     ),
                    //       //     child: Hero(
                    //       //       tag: "Design",
                    //       //       child: Icon(
                    //       //         MyFlutterApp.designicon,
                    //       //         color: Colors.white,
                    //       //         size: 50,
                    //       //       ),
                    //       //     ),
                    //       //   ),
                    //       // ),
                    //       // Center(
                    //       //   child: Hero(
                    //       //     tag: "Buildnow",
                    //       //     child: Icon(
                    //       //       MyFlutterApp.buildnowiconsvg,
                    //       //       color: Colors.blue,
                    //       //     ),
                    //       //   ),
                    //       // )
                    //     ],
                    //   ),
                    // ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 100,
                        bottom: MediaQuery.of(context).size.height * 0.40,
                      ),
                      child: Center(
                        child: Column(
                          // mainAxisAlignment: Main,
                          children: [
                            Text(
                              "Bring your mobile app ideas to life.",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                //overflow: TextOverflow.visible,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 50,
                              child: AnimatedTextKit(
                                // pause: const Duration(milliseconds: 50),
                                repeatForever: true,
                                animatedTexts: [
                                  FadeAnimatedText(
                                    "Specify",
                                    textStyle: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 40,
                                      //overflow: TextOverflow.visible,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  FadeAnimatedText(
                                    "Design",
                                    textStyle: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 40,
                                      //overflow: TextOverflow.visible,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  FadeAnimatedText(
                                    "Build",
                                    textStyle: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 40,
                                      //overflow: TextOverflow.visible,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    elevation: 10,
                                    primary: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    minimumSize: Size(200, 50)),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/home',
                                  );
                                },
                                onHover: (hover) {
                                  setState(() {
                                    aboutToClick = hover;
                                  });
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                ),
                                label: aboutToClick
                                    ? AnimatedTextKit(
                                        totalRepeatCount: 1,
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            "Build Now!",
                                            textStyle: GoogleFonts.montserrat(
                                              //fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 50),
                                          )
                                        ],
                                      )
                                    : Text(
                                        "Build Now!",
                                        style: GoogleFonts.montserrat(
                                          //fontSize: 50,
                                          fontWeight: FontWeight.w900,
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
              ),
            ),
          );
  }
}
