import 'package:buildnow/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeskTopRealizePage extends StatefulWidget {
  const DeskTopRealizePage({Key? key}) : super(key: key);

  @override
  State<DeskTopRealizePage> createState() => _DeskTopRealizePageState();
}

class _DeskTopRealizePageState extends State<DeskTopRealizePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        height: null,
        child: Stack(
          children: [
            Stack(
              children: [
                // Container(
                //   padding: EdgeInsets.all(20),
                //   child: Divider(
                //     color:
                //         Color.fromARGB(255, 255, 255, 255),
                //     thickness: 0.5,
                //   ),
                // ),
                Positioned(
                  //alignment: Alignment.centerLeft,
                  top: 300,

                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "REALIZE",
                          style: GoogleFonts.passionOne(
                            color: backGroundTextColor,

                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.10,
                            //overflow: TextOverflow.visible,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Icon(
                          CupertinoIcons.lightbulb_fill,
                          size: MediaQuery.of(context).size.width * 0.10,
                          color: Color.fromARGB(255, 255, 0, 0),
                        )
                      ],
                    ),
                  ),
                ),

                // Align(
                //   alignment: Alignment.center,
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       children: [
                //         // Container(
                //         //   padding: EdgeInsets.all(20),
                //         //   height: 200,
                //         //   color: Color.fromARGB(
                //         //       140, 0, 140, 255),
                //         //   width: MediaQuery.of(context)
                //         //           .size
                //         //           .width *
                //         //       0.7,
                //         // ),
                //         SizedBox(
                //           width: MediaQuery.of(context)
                //                   .size
                //                   .width *
                //               0.5,
                //           child: Image.asset(
                //             "lana.PNG",
                //             //colorBlendMode: BlendMode.screen,
                //             //color: Color.fromARGB(25, 255, 255, 255),
                //             fit: BoxFit.cover,
                //             filterQuality:
                //                 FilterQuality.medium,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

                Positioned.fill(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        //Specify button
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: 900,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Column(
                                    //   mainAxisSize:
                                    //       MainAxisSize
                                    //           .min,
                                    //   children: [
                                    //     Container(
                                    //       padding: EdgeInsets
                                    //           .only(
                                    //               top:
                                    //                   5),
                                    //       child: Icon(
                                    //         BuildNowIcons
                                    //             .specifyicon,
                                    //         size: 50,
                                    //         color: Colors
                                    //             .white,
                                    //       ),
                                    //     ),
                                    //     Text(
                                    //         "DISCUSS",
                                    //         style:
                                    //             subHeadingTextStyle),
                                    //   ],
                                    // ),
                                    Container(
                                      height: 200,
                                      padding: EdgeInsets.only(
                                        left: 30,
                                        right: 30,
                                      ),
                                      child: VerticalDivider(
                                        width: 20,
                                        indent: 20,
                                        endIndent: 0,
                                        color: Colors.white,
                                        thickness: 2,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Make it Tangible!\nFocused on taking your ideas from paper to product. I will ensure that you get a working product to ship to your current and future users.",
                                          textAlign: TextAlign.left,
                                          style: bodyTextStyle,
                                        ),
                                      ),
                                    )
                                  ],
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
