//import 'package:buildnow/my_flutter_app_icons.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/arrow_icons_icons.dart';
import 'package:buildnow/build_now_icons_icons.dart';
import 'package:buildnow/constants.dart';
import 'package:buildnow/linkedIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart' as newSVG;
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Stages { build, specify, design, implement, me }

enum Approach { discuss, plan, build }

class TagWidget extends StatelessWidget {
  final String tagText;
  const TagWidget(this.tagText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 10,
        top: 10,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(61, 255, 255, 255)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          tagText,
          style: bodyTextStyle.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  bool aboutToClick = false;
  bool hoveringOver = false;
  bool animationDone = false;
  Stages selectedStage = Stages.build;
  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.vertical);

  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Scaffold(
            body: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.3,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(50),
                          child: Column(
                            children: [
                              // //Me
                              Container(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  bottom: 50,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedStage = Stages.me;
                                      _scrollController.scrollToIndex(5);
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hi, I'm",
                                              style: bodyTextStyle,
                                            ),
                                            Text(
                                              "Daniel Dickson",
                                              style: subHeadingTextStyle,
                                            ),
                                            Text(
                                              "I build Mobile and the Web applications",
                                              style: bodyTextStyle,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                top: 20,
                                              ),
                                              child: ElevatedButton.icon(
                                                style: actionButtonStyle,
                                                onPressed: goToContactForm,
                                                onHover: (hover) {
                                                  setState(() {
                                                    aboutToClick = hover;
                                                  });
                                                },
                                                icon: Icon(Icons.send),
                                                label: aboutToClick
                                                    ? AnimatedTextKit(
                                                        totalRepeatCount: 1,
                                                        animatedTexts: [
                                                          TyperAnimatedText(
                                                            "Let's chat",
                                                            textStyle:
                                                                GoogleFonts
                                                                    .montserrat(
                                                              //fontSize: 50,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                            speed:
                                                                const Duration(
                                                                    milliseconds:
                                                                        50),
                                                          )
                                                        ],
                                                      )
                                                    : Text(
                                                        "Let's chat",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          //fontSize: 50,
                                                          fontWeight:
                                                              FontWeight.w700,
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

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: ListTile(
                                  leading: Icon(
                                    CupertinoIcons.phone,
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                  title: Text(
                                    "+31684555925",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
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
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                  title: Text(
                                    "info@buildnow.dev",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
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
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                  title: Column(
                                    children: [
                                      Text(
                                        "Deeformed BV",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                          //overflow: TextOverflow.visible,
                                        ),
                                      ),
                                      Text(
                                        "KVK 83590668",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
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
                      )
                    ],
                  ),
                ),

                //view column
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Color.fromARGB(255, 38, 38, 38),
                  child: SingleChildScrollView(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Stack(
                            children: [
                              // Align(
                              //   alignment: Alignment.bottomRight,
                              //   child: SizedBox(
                              //     width:
                              //         MediaQuery.of(context).size.width * 0.5,
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
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.45,
                                          //left: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  height: 200,
                                                ),
                                                animationDone
                                                    ? Text(
                                                        "Bring your app ideas\nto life.",
                                                        style: GoogleFonts
                                                            .passionOne(
                                                          color: Colors.white,

                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 150,
                                                          //overflow: TextOverflow.visible,
                                                        ),
                                                        textAlign:
                                                            TextAlign.right,
                                                      )
                                                    : AnimatedTextKit(
                                                        totalRepeatCount: 1,
                                                        onNext:
                                                            (stage, done) {},
                                                        onFinished: () {
                                                          setState(() {
                                                            animationDone =
                                                                true;
                                                          });
                                                        },
                                                        animatedTexts: [
                                                          TyperAnimatedText(
                                                            "Bring your app ideas\nto life.",
                                                            textStyle:
                                                                GoogleFonts
                                                                    .passionOne(
                                                              color:
                                                                  Colors.white,

                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 150,
                                                              //overflow: TextOverflow.visible,
                                                            ),
                                                            textAlign:
                                                                TextAlign.right,
                                                            speed:
                                                                const Duration(
                                                                    milliseconds:
                                                                        70),
                                                          ),
                                                        ],
                                                      ),
                                                Text(
                                                  "Specify | Build",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 40,
                                                    //overflow: TextOverflow.visible,
                                                  ),
                                                  textAlign: TextAlign.left,
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
                        ),

                        //Approach Container
                        Container(
                          color: Color.fromARGB(255, 36, 36, 36),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "MY\nAPPROACH",
                                              style: GoogleFonts.passionOne(
                                                color: Color.fromARGB(
                                                    5, 255, 255, 255),

                                                fontWeight: FontWeight.bold,
                                                fontSize: 200,
                                                //overflow: TextOverflow.visible,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              ArrowIcons.arrowtest,
                                              size: 200,
                                              color:
                                                  Color.fromARGB(36, 255, 0, 0),
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
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: UnconstrainedBox(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.5,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(20),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                              top: 5),
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .chat_bubble_2,
                                                                        size:
                                                                            50,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                        "DISCUSS",
                                                                        style:
                                                                            subHeadingTextStyle),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  height: 100,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 30,
                                                                    right: 30,
                                                                  ),
                                                                  child:
                                                                      VerticalDivider(
                                                                    width: 20,
                                                                    indent: 20,
                                                                    endIndent:
                                                                        0,
                                                                    color: Colors
                                                                        .white,
                                                                    thickness:
                                                                        0.5,
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
                                                                            EdgeInsets.only(left: 10),
                                                                        child:
                                                                            Text(
                                                                          "Let's get our brains warmed up. We will break down the problem, define it and out line possible solutions.",
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style:
                                                                              bodyTextStyle,
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        padding:
                                                                            EdgeInsets.only(top: 10),
                                                                        child:
                                                                            Wrap(
                                                                          children: [
                                                                            TagWidget("Chat"),
                                                                            TagWidget("Problem Definition"),
                                                                            TagWidget("Solution Outline"),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 10),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {
                                                                      _scrollController.scrollToIndex(Approach
                                                                          .plan
                                                                          .index);
                                                                    },
                                                                    iconSize:
                                                                        30,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_circle_right_rounded,
                                                                      // color: Colors
                                                                      //     .white,
                                                                    ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            140,
                                                                            0,
                                                                            140,
                                                                            255),
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
                                            ),

                                            AutoScrollTag(
                                              key: Key("ScrollPlan"),
                                              controller: _scrollController,
                                              index: Approach.plan.index,
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                child: UnconstrainedBox(
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                5),
                                                                    child: Icon(
                                                                      CupertinoIcons
                                                                          .map,
                                                                      size: 50,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  Text("PLAN",
                                                                      style:
                                                                          subHeadingTextStyle),
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 100,
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 30,
                                                                  right: 30,
                                                                ),
                                                                child:
                                                                    VerticalDivider(
                                                                  width: 20,
                                                                  indent: 20,
                                                                  endIndent: 0,
                                                                  color: Colors
                                                                      .white,
                                                                  thickness:
                                                                      0.5,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        "Together with a UI/UX expert of your choice or mine, we will create wireframes and mockups of our solution of choice. This will help us estimate how long the project will take.",
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        style:
                                                                            bodyTextStyle,
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                              top: 10),
                                                                      child:
                                                                          Wrap(
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
                                                                EdgeInsets.only(
                                                                    top: 10),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    _scrollController.scrollToIndex(Approach
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
                                                                  color: Color
                                                                      .fromARGB(
                                                                          140,
                                                                          0,
                                                                          140,
                                                                          255),
                                                                ),
                                                                IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    _scrollController.scrollToIndex(
                                                                        Approach
                                                                            .build
                                                                            .index);
                                                                  },
                                                                  iconSize: 30,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .arrow_circle_right_rounded,
                                                                    // color: Colors
                                                                    //     .white,
                                                                  ),
                                                                  color: Color
                                                                      .fromARGB(
                                                                          140,
                                                                          0,
                                                                          140,
                                                                          255),
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
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: UnconstrainedBox(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.5,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(20),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets
                                                                          .only(
                                                                              top: 5),
                                                                      child:
                                                                          Icon(
                                                                        CupertinoIcons
                                                                            .gear,
                                                                        size:
                                                                            50,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                        "BUILD",
                                                                        style:
                                                                            subHeadingTextStyle),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  height: 100,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 30,
                                                                    right: 30,
                                                                  ),
                                                                  child:
                                                                      VerticalDivider(
                                                                    width: 20,
                                                                    indent: 20,
                                                                    endIndent:
                                                                        0,
                                                                    color: Colors
                                                                        .white,
                                                                    thickness:
                                                                        0.5,
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
                                                                            EdgeInsets.only(left: 10),
                                                                        child:
                                                                            Text(
                                                                          "Let's put all our work into code. The development process begin. I will keep you updated based on the planned dates.",
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style:
                                                                              bodyTextStyle,
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        padding:
                                                                            EdgeInsets.only(top: 10),
                                                                        child:
                                                                            Wrap(
                                                                          children: [
                                                                            TagWidget("Code Base"),
                                                                            TagWidget("Finished Product"),
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
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 10),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {
                                                                      _scrollController.scrollToIndex(Approach
                                                                          .plan
                                                                          .index);
                                                                    },
                                                                    iconSize:
                                                                        30,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_circle_left_rounded,
                                                                      // color: Colors
                                                                      //     .white,
                                                                    ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            140,
                                                                            0,
                                                                            140,
                                                                            255),
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

                        //About
                        Container(
                          color: Color.fromARGB(255, 36, 36, 36),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "ABOUT\nME",
                                              style: GoogleFonts.passionOne(
                                                color: Color.fromARGB(
                                                    5, 255, 255, 255),

                                                fontWeight: FontWeight.bold,
                                                fontSize: 200,
                                                //overflow: TextOverflow.visible,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              CupertinoIcons.person_alt,
                                              size: 200,
                                              color:
                                                  Color.fromARGB(36, 255, 0, 0),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            //Specify button
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: UnconstrainedBox(
                                                  child: Container(
                                                    padding: EdgeInsets.all(20),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.5,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
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
                                                                height: 100,
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 30,
                                                                  right: 30,
                                                                ),
                                                                child:
                                                                    VerticalDivider(
                                                                  width: 20,
                                                                  indent: 20,
                                                                  endIndent: 0,
                                                                  color: Colors
                                                                      .white,
                                                                  thickness:
                                                                      0.5,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              10),
                                                                  child: Text(
                                                                    "I know what it feels like to have an idea stuck in your head and the desire to turn that into something tangible. For creating mobile applications, Flutter is my weapon of choice due to its versatility and clean material design. Always excited to brainstorm ideas, design them and bring them to reality. Do not wait, BUILDNOW!",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        bodyTextStyle,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),

            /**implement if necessary*/

            // floatingActionButton: Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.arrow_circle_left_rounded,
            //       ),
            //       hoverColor: Colors.white,
            //     ),
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.arrow_circle_left_rounded,
            //         color: Colors.blue,
            //       ),
            //       hoverColor: Colors.white,
            //     ),
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.arrow_circle_left_rounded,
            //       ),
            //       hoverColor: Colors.white,
            //     ),
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.arrow_circle_left_rounded,
            //       ),
            //       hoverColor: Colors.white,
            //     ),
            //   ],
            //),
          )

        //mobile block
        : Scaffold(
            body: Container(
              color: Color.fromARGB(255, 36, 36, 36),
              //width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: SizedBox(
                  height: null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoScrollTag(
                        key: Key("ScrollMobPosBuild"),
                        controller: _scrollController,
                        index: Stages.build.index,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedStage = Stages.build;
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: CircleAvatar(
                                    backgroundImage: Image.asset(
                                      "BuildNowAppIcon.png",
                                    ).image,
                                    radius: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5, bottom: 10),
                                  child: Text(
                                    "BuildNOW",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      //overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Start the build-measure-learn cycle by turning your idea into a functional application. Enable rapid validation of your core idea.",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                          //overflow: TextOverflow.visible,
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
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Divider(
                          color: Color.fromARGB(123, 158, 158, 158),
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "PATHWAY TO REALISATION",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  //overflow: TextOverflow.visible,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.arrow_circle_down_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //specify card
                      AutoScrollTag(
                        key: Key("ScrollMobPosSpecify"),
                        controller: _scrollController,
                        index: Stages.specify.index,
                        child: Container(
                          padding: EdgeInsets.only(top: 50),
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedStage = Stages.specify;
                                _scrollController.scrollToIndex(
                                  Stages.specify.index,
                                );
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation:
                                  selectedStage == Stages.specify ? 20 : 5,
                              color: selectedStage == Stages.specify
                                  ? Color.fromARGB(17, 255, 255, 255)
                                  : null,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.asset("Goals.jpeg").image,
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Color.fromARGB(121, 0, 0, 0),
                                        BlendMode.darken,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Hero(
                                          tag: "SpecifyIcon",
                                          child: Icon(
                                            BuildNowIcons.specifyicon,
                                            size:
                                                selectedStage == Stages.specify
                                                    ? 100
                                                    : 50,
                                            color:
                                                selectedStage == Stages.specify
                                                    ? Colors.white
                                                    : Color.fromARGB(
                                                        100, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Specify",
                                          style: GoogleFonts.montserrat(
                                            color:
                                                selectedStage == Stages.specify
                                                    ? Colors.white
                                                    : Color.fromARGB(
                                                        100, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                selectedStage == Stages.specify
                                                    ? 40
                                                    : 20,
                                            //overflow: TextOverflow.visible,
                                          ),
                                        ),
                                      ),
                                      selectedStage == Stages.specify
                                          ? Column(
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    "Every problem deserves a unique approach.\nAt this stage you and I will find out what exactly the problem is, who we are solving the problem for and what is a feasible solution.\n\nReceive wireframes and a list of features.",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: selectedStage ==
                                                              Stages.specify
                                                          ? Colors.white
                                                          : Color.fromARGB(100,
                                                              255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: selectedStage ==
                                                              Stages.specify
                                                          ? 20
                                                          : 15,
                                                      //overflow: TextOverflow.visible,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        "From:",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        "199€",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                          // decoration:
                                                          //     TextDecoration
                                                          //         .lineThrough
                                                          //overflow: TextOverflow.visible,
                                                        ),
                                                      ),
                                                      // Text(
                                                      //   "Free",
                                                      //   textAlign:
                                                      //       TextAlign.center,
                                                      //   style: GoogleFonts
                                                      //       .montserrat(
                                                      //     fontStyle:
                                                      //         FontStyle.italic,
                                                      //     color: Colors.white,
                                                      //     fontWeight:
                                                      //         FontWeight.normal,
                                                      //     fontSize: 20,
                                                      //     //overflow: TextOverflow.visible,
                                                      //   ),
                                                      // )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: 20,
                                                  ),
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            elevation: 10,
                                                            primary:
                                                                Colors.blue,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            minimumSize:
                                                                Size(200, 50)),
                                                    onPressed: goToContactForm,
                                                    icon: Icon(
                                                      Icons.arrow_forward,
                                                    ),
                                                    label: Text(
                                                      "Specify Now!",
                                                      style: GoogleFonts.montserrat(
                                                          //fontSize: 50,
                                                          //fontWeight: FontWeight.w900,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : SizedBox(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //design card
                      AutoScrollTag(
                        key: Key("ScrollMobPosDesign"),
                        controller: _scrollController,
                        index: Stages.design.index,
                        child: Container(
                          padding: EdgeInsets.only(top: 50),
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedStage = Stages.design;
                                _scrollController
                                    .scrollToIndex(Stages.design.index);
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation:
                                  selectedStage == Stages.design ? 20 : 5,
                              color: selectedStage == Stages.design
                                  ? Color.fromARGB(17, 255, 255, 255)
                                  : Color.fromARGB(12, 255, 255, 255),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.asset("Ui.jpeg").image,
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Color.fromARGB(121, 0, 0, 0),
                                        BlendMode.darken,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Hero(
                                          tag: "DesignIcon",
                                          child: Icon(
                                            BuildNowIcons.design,
                                            size: selectedStage == Stages.design
                                                ? 100
                                                : 50,
                                            color:
                                                selectedStage == Stages.design
                                                    ? Colors.white
                                                    : Color.fromARGB(
                                                        100, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Design",
                                          style: GoogleFonts.montserrat(
                                            color:
                                                selectedStage == Stages.design
                                                    ? Colors.white
                                                    : Color.fromARGB(
                                                        100, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                selectedStage == Stages.design
                                                    ? 40
                                                    : 20,
                                            //overflow: TextOverflow.visible,
                                          ),
                                        ),
                                      ),
                                      selectedStage == Stages.design
                                          ? Column(
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    "Design goes beyond what is seen!\nAt this stage you and I will create an awesome experience for your users. Create all user flows and a full visual representation of your solution.\n\nReceive all digital designs and visualisations",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: selectedStage ==
                                                              Stages.design
                                                          ? Colors.white
                                                          : Color.fromARGB(100,
                                                              255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: selectedStage ==
                                                              Stages.design
                                                          ? 20
                                                          : 15,
                                                      //overflow: TextOverflow.visible,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        "From:",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      // Text(
                                                      //   "Eur 599,-",
                                                      //   textAlign:
                                                      //       TextAlign.center,
                                                      //   style: GoogleFonts.montserrat(
                                                      //       fontStyle: FontStyle
                                                      //           .italic,
                                                      //       color: Colors.white,
                                                      //       fontWeight:
                                                      //           FontWeight
                                                      //               .normal,
                                                      //       fontSize: 20,
                                                      //       decoration:
                                                      //           TextDecoration
                                                      //               .lineThrough
                                                      //       //overflow: TextOverflow.visible,
                                                      //       ),
                                                      // ),
                                                      Text(
                                                        "299€",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                          //overflow: TextOverflow.visible,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: 20,
                                                  ),
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            elevation: 10,
                                                            primary:
                                                                Colors.blue,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            minimumSize:
                                                                Size(200, 50)),
                                                    onPressed: goToContactForm,
                                                    icon: Icon(
                                                      Icons.arrow_forward,
                                                    ),
                                                    label: Text(
                                                      "Design Now!",
                                                      style: GoogleFonts.montserrat(
                                                          //fontSize: 50,
                                                          //fontWeight: FontWeight.w900,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : SizedBox()
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //implement card
                      AutoScrollTag(
                        key: Key("ScrollPosMobImp"),
                        controller: _scrollController,
                        index: Stages.implement.index,
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 50,
                            bottom: 20,
                          ),
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: InkWell(
                            onTap: () {
                              setState(
                                () {
                                  selectedStage = Stages.implement;
                                  _scrollController
                                      .scrollToIndex(Stages.implement.index);
                                },
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation:
                                  selectedStage == Stages.design ? 20 : 5,
                              color: selectedStage == Stages.implement
                                  ? Color.fromARGB(17, 255, 255, 255)
                                  : Color.fromARGB(12, 255, 255, 255),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.asset("coding.jpeg").image,
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                        Color.fromARGB(121, 0, 0, 0),
                                        BlendMode.darken,
                                      ),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Hero(
                                          tag: "ImplementIcon",
                                          child: Icon(
                                            BuildNowIcons.implement,
                                            size: selectedStage ==
                                                    Stages.implement
                                                ? 100
                                                : 50,
                                            color: selectedStage ==
                                                    Stages.implement
                                                ? Colors.white
                                                : Color.fromARGB(
                                                    100, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Build",
                                          style: GoogleFonts.montserrat(
                                            color: selectedStage ==
                                                    Stages.implement
                                                ? Colors.white
                                                : Color.fromARGB(
                                                    100, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                            fontSize: selectedStage ==
                                                    Stages.implement
                                                ? 40
                                                : 20,
                                            //overflow: TextOverflow.visible,
                                          ),
                                        ),
                                      ),
                                      selectedStage == Stages.implement
                                          ? Column(
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 50),
                                                  child: Text(
                                                    "Let's code! building for web, mobile or both? Let us finally get down to it. Turn your solution into a functional working application.\n\nGitHub is your friend. Deploy to both the AppStore ,PlayStore and, if necessary, receive the code base on GitHub.",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: selectedStage ==
                                                              Stages.implement
                                                          ? Colors.white
                                                          : Color.fromARGB(100,
                                                              255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: selectedStage ==
                                                              Stages.implement
                                                          ? 20
                                                          : 15,
                                                      //overflow: TextOverflow.visible,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        "From:",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Eur 1999€",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GoogleFonts
                                                            .montserrat(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                          // decoration:
                                                          //     TextDecoration
                                                          //         .lineThrough
                                                          //overflow: TextOverflow.visible,
                                                        ),
                                                      ),
                                                      // Text(
                                                      //   "Eur 999,-",
                                                      //   textAlign:
                                                      //       TextAlign.center,
                                                      //   style: GoogleFonts
                                                      //       .montserrat(
                                                      //     fontStyle:
                                                      //         FontStyle.italic,
                                                      //     color: Colors.white,
                                                      //     fontWeight:
                                                      //         FontWeight.normal,
                                                      //     fontSize: 20,
                                                      //     //overflow: TextOverflow.visible,
                                                      //   ),
                                                      // )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: 20,
                                                  ),
                                                  child: ElevatedButton.icon(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            elevation: 10,
                                                            primary:
                                                                Colors.blue,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                            ),
                                                            minimumSize:
                                                                Size(200, 50)),
                                                    onPressed: goToContactForm,
                                                    icon: Icon(
                                                      Icons.arrow_forward,
                                                    ),
                                                    label: Text(
                                                      "Build Now!",
                                                      style: GoogleFonts.montserrat(
                                                          //fontSize: 50,
                                                          //fontWeight: FontWeight.w900,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : SizedBox()
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Divider(
                          color: Color.fromARGB(123, 158, 158, 158),
                          thickness: 0.5,
                        ),
                      ),

                      //Me card
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: AutoScrollTag(
                          key: Key("ScrollPosMobMe"),
                          controller: _scrollController,
                          index: Stages.me.index,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              // decoration: BoxDecoration(
                              //   shape: BoxShape.circle,
                              //   color: Colors.white,
                              // ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        Image.asset("me.jpg").image,
                                    radius: MediaQuery.of(context).size.width *
                                        0.20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Flutter Developer <>",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,

                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        //overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Hi my name is Daniel Dickson Dillimono. I know what it feels like to have an idea stuck in your head and the desire to turn that into something tangible. Always ready to brainstorm your ideas, design them and bring them to reality in mobile, web or desktop form. Do not wait, reachout and let's BUILDNOW!",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,

                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        //overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: double.infinity,
                                    padding: EdgeInsets.only(
                                      top: 40,
                                    ),
                                    child: ListTile(
                                      leading: Icon(
                                        LinkedIn.linkedin,
                                        color: Colors.white,
                                      ),
                                      title: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 10,
                                        ),
                                        child: Text(
                                          "Follow me on LinkedIn",
                                          style: TextStyle(
                                            color: Colors.white,
                                            //fontWeight: FontWeight.,
                                          ),
                                        ),
                                        onPressed: () {
                                          launchUrl(Uri.parse(
                                              "https://nl.linkedin.com/in/daniel-dickson-dillimono"));
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: double.infinity,
                                    padding: EdgeInsets.only(
                                      top: 20,
                                    ),
                                    child: ListTile(
                                      leading: Icon(
                                        LinkedIn.linkedin,
                                        color: Colors.white,
                                      ),
                                      title: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 10,
                                        ),
                                        child: Text(
                                          "Follow BuildNow on LinkedIn",
                                          style: TextStyle(
                                            color: Colors.white,
                                            //fontWeight: FontWeight.,
                                          ),
                                        ),
                                        onPressed: () {
                                          launchUrl(Uri.parse(
                                              "https://www.linkedin.com/showcase/buildnowbydeeformed/?viewAsMember=true"));
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //contact block
                      AutoScrollTag(
                        key: Key("SpaceMobWidget"),
                        controller: _scrollController,
                        index: 5,
                        child: Container(
                          padding: EdgeInsets.all(50),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: ListTile(
                                  leading: Icon(
                                    CupertinoIcons.phone,
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                  title: Text(
                                    "+31684555925",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
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
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                  title: Text(
                                    "info@buildnow.dev",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
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
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                  title: Column(
                                    children: [
                                      Text(
                                        "Deeformed BV",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15,
                                          //overflow: TextOverflow.visible,
                                        ),
                                      ),
                                      Text(
                                        "KVK 83590668",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
