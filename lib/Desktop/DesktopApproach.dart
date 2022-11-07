import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/Shared/arrow_icons_icons.dart';
import 'package:buildnow/Shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class DesktopApproachPage extends StatefulWidget {
  const DesktopApproachPage({Key? key}) : super(key: key);

  @override
  State<DesktopApproachPage> createState() => _DesktopApproachPageState();
}

class _DesktopApproachPageState extends State<DesktopApproachPage> {
  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.horizontal);
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          padding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: Divider(
                            indent: 20,
                            endIndent: 0,
                            color: Color.fromARGB(255, 148, 148, 148),
                            thickness: 1.5,
                          ),
                        ),
                        // AnimatedTextKit(animatedTexts: [
                        //   TyperAnimatedText(
                        //     "Scroll down",
                        //     textStyle: GoogleFonts.montserrat(
                        //       color: Color.fromARGB(255, 148, 148, 148),
                        //       fontWeight: FontWeight.w200,
                        //       fontSize: 20,
                        //       //overflow: TextOverflow.visible,
                        //     ),
                        //   ),
                        // ])

                        Text(
                          "Scroll Right",
                          style: GoogleFonts.montserrat(
                            color: Color.fromARGB(255, 148, 148, 148),
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            //overflow: TextOverflow.visible,
                          ),
                        ),
                        // Icon(
                        //   Icons.arrow_circle_right_outlined,
                        //   color: Color.fromARGB(255, 148, 148, 148),
                        // ),
                      ],
                    ),
                  ),
                ),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Text(
                        //   "MY\nAPPROACH",
                        //   style: GoogleFonts.passionOne(
                        //     color: backGroundTextColor,

                        //     fontWeight: FontWeight.bold,
                        //     fontSize: MediaQuery.of(context).size.width * 0.10,
                        //     //overflow: TextOverflow.visible,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TyperAnimatedText(
                              "MY\nAPPROACH",
                              speed: Duration(
                                milliseconds: 100,
                              ),
                              textStyle: GoogleFonts.passionOne(
                                color: backGroundTextColor,

                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.10,
                                //overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          ArrowIcons.arrowtest,
                          size: MediaQuery.of(context).size.width * 0.10,
                          color: Color.fromARGB(16, 255, 0, 0),
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
                //         //   height: 150,
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
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Specify button
                        AutoScrollTag(
                          key: Key("ScrollDiscuss"),
                          controller: _scrollController,
                          index: Approach.discuss.index,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                width: 900,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  CupertinoIcons.chat_bubble_2,
                                                  size: 50,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text("DISCUSS",
                                                  style: subHeadingTextStyle),
                                            ],
                                          ),
                                          Container(
                                            height: 100,
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
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Let's get our brains warmed up. We will break down the problem, define it and out line possible solutions.",
                                                    textAlign: TextAlign.left,
                                                    style: bodyTextStyle,
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Wrap(
                                                    children: [
                                                      TagWidget("Chat"),
                                                      TagWidget(
                                                          "Problem Definition"),
                                                      TagWidget(
                                                          "Solution Outline"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                _scrollController.scrollToIndex(
                                                    Approach.plan.index);
                                              },
                                              iconSize: 30,
                                              icon: Icon(
                                                Icons
                                                    .arrow_circle_right_rounded,
                                                // color: Colors
                                                //     .white,
                                              ),
                                              color: Color.fromARGB(
                                                  140, 0, 140, 255),
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

                        AutoScrollTag(
                          key: Key("ScrollPlan"),
                          controller: _scrollController,
                          index: Approach.plan.index,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                width: 900,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  CupertinoIcons.map,
                                                  size: 50,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text("PLAN",
                                                  style: subHeadingTextStyle),
                                            ],
                                          ),
                                          Container(
                                            height: 100,
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
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Together with a UI/UX expert of your choice or mine, we will create wireframes and mockups of the chosen solution.",
                                                    textAlign: TextAlign.left,
                                                    style: bodyTextStyle,
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Wrap(
                                                    children: [
                                                      TagWidget("WireFrames"),
                                                      TagWidget("UI Mockup"),
                                                      TagWidget("TimeLine"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                _scrollController.scrollToIndex(
                                                    Approach.discuss.index);
                                              },
                                              iconSize: 30,
                                              icon: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                // color: Colors
                                                //     .white,
                                              ),
                                              color: Color.fromARGB(
                                                  140, 0, 140, 255),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                _scrollController.scrollToIndex(
                                                    Approach.build.index);
                                              },
                                              iconSize: 30,
                                              icon: Icon(
                                                Icons
                                                    .arrow_circle_right_rounded,
                                                // color: Colors
                                                //     .white,
                                              ),
                                              color: Color.fromARGB(
                                                  140, 0, 140, 255),
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

                        AutoScrollTag(
                          key: Key("Build"),
                          controller: _scrollController,
                          index: Approach.build.index,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                width: 900,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  CupertinoIcons.gear,
                                                  size: 50,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text("BUILD",
                                                  style: subHeadingTextStyle),
                                            ],
                                          ),
                                          Container(
                                            height: 100,
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
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Let's put all our work into code. The development process begins. I will keep you updated based on the planned dates, making corrections as we head towards your desired product",
                                                    textAlign: TextAlign.left,
                                                    style: bodyTextStyle,
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Wrap(
                                                    children: [
                                                      TagWidget("Code Base"),
                                                      TagWidget(
                                                          "Finished Product"),
                                                      TagWidget("Champagne"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                _scrollController.scrollToIndex(
                                                    Approach.plan.index);
                                              },
                                              iconSize: 30,
                                              icon: Icon(
                                                Icons.arrow_circle_left_rounded,
                                                // color: Colors
                                                //     .white,
                                              ),
                                              color: Color.fromARGB(
                                                  140, 0, 140, 255),
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
