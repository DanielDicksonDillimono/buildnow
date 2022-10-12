import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/arrow_icons_icons.dart';
import 'package:buildnow/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MainMobileView extends StatefulWidget {
  const MainMobileView({Key? key}) : super(key: key);

  @override
  State<MainMobileView> createState() => _MainMobileViewState();
}

class _MainMobileViewState extends State<MainMobileView> {
  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.horizontal);
  final AutoScrollController _scrollControllerMainView =
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
        controller: _scrollControllerMainView,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Intro Section
            AutoScrollTag(
              controller: _scrollControllerMainView,
              key: Key("IntroPage"),
              index: MobilePages.intro.index,
              child: Container(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        SizedBox(
                                          height: 10,
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
                                          "Daniel",
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
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      //fontSize: 50,
                                                      // fontSize:
                                                      //     MediaQuery.of(context)
                                                      //             .size
                                                      //             .width *
                                                      //         0.05,
                                                      fontWeight:
                                                          FontWeight.w700,
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
            ),

            //my Approach
            //Approach Container
            AutoScrollTag(
              controller: _scrollControllerMainView,
              key: Key("ApproachPage"),
              index: MobilePages.approach.index,
              child: Container(
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
                            top: 100,

                            child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "MY\nAPPROACH",
                                    style: GoogleFonts.passionOne(
                                      color: backGroundTextColor,

                                      fontWeight: FontWeight.bold,
                                      fontSize: 100,
                                      //overflow: TextOverflow.visible,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    ArrowIcons.arrowtest,
                                    size: 200,
                                    color: Color.fromARGB(36, 255, 0, 0),
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
                              controller: _scrollController,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Specify button
                                  AutoScrollTag(
                                    key: Key("ScrollDiscuss"),
                                    controller: _scrollController,
                                    index: Approach.discuss.index,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          // width: 900,
                                          child: Container(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Icon(
                                                            CupertinoIcons
                                                                .chat_bubble_2,
                                                            size: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        Text("DISCUSS",
                                                            style: subHeadingTextStyle.copyWith(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.05)),
                                                      ],
                                                    ),
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Text(
                                                              "Let's get our brains warmed up. We will break down the problem, define it and out line possible solutions.",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: bodyTextStyle.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.05),
                                                            ),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10),
                                                            child: Wrap(
                                                              children: [
                                                                TagWidget(
                                                                    "Chat"),
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
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {
                                                          _scrollController
                                                              .scrollToIndex(
                                                                  Approach.plan
                                                                      .index);
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
                                      width: MediaQuery.of(context).size.width,
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          // width: 900,
                                          child: Container(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Icon(
                                                            CupertinoIcons.map,
                                                            size: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        Text(
                                                          "PLAN",
                                                          style:
                                                              subHeadingTextStyle
                                                                  .copyWith(
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.05,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Text(
                                                              "Together with a UI/UX expert of your choice or mine, we will create wireframes and mockups of the choosen solution. This will help us estimate how long the project will take.",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: bodyTextStyle.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.05),
                                                            ),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10),
                                                            child: Wrap(
                                                              children: [
                                                                TagWidget(
                                                                    "WireFrames"),
                                                                TagWidget(
                                                                    "UI Mockup"),
                                                                TagWidget(
                                                                    "TimeLine"),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {
                                                          _scrollController
                                                              .scrollToIndex(
                                                                  Approach
                                                                      .discuss
                                                                      .index);
                                                        },
                                                        iconSize: 30,
                                                        icon: Icon(
                                                          Icons
                                                              .arrow_circle_left_rounded,
                                                          // color: Colors
                                                          //     .white,
                                                        ),
                                                        color: Color.fromARGB(
                                                            140, 0, 140, 255),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          _scrollController
                                                              .scrollToIndex(
                                                                  Approach.build
                                                                      .index);
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
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Icon(
                                                            CupertinoIcons.gear,
                                                            size: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        Text("BUILD",
                                                            style: subHeadingTextStyle.copyWith(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.05)),
                                                      ],
                                                    ),
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            child: Text(
                                                              "Let's put all our work into code. The development process begin. I will keep you updated based on the planned dates.",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: bodyTextStyle.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.05),
                                                            ),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10),
                                                            child: Wrap(
                                                              children: [
                                                                TagWidget(
                                                                    "Code Base"),
                                                                TagWidget(
                                                                    "Finished Product"),
                                                                TagWidget(
                                                                    "Champagne"),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {
                                                          _scrollController
                                                              .scrollToIndex(
                                                                  Approach.plan
                                                                      .index);
                                                        },
                                                        iconSize: 30,
                                                        icon: Icon(
                                                          Icons
                                                              .arrow_circle_left_rounded,
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
              ),
            ),

//about page
            AutoScrollTag(
              controller: _scrollControllerMainView,
              key: Key("AboutPage"),
              index: MobilePages.about.index,
              child: Container(
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
                                                  "I know what it feels like to have an idea stuck in your head and the desire to turn that into something tangible. For creating mobile applications, Flutter is my weapon of choice due to its versatility and clean material design. Always excited to brainstorm ideas, design them and bring them to reality. Do not wait, BUILDNOW!",
                                                  textAlign: TextAlign.left,
                                                  style: bodyTextStyle.copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.05),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
