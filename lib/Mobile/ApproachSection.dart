import 'package:flutter/material.dart';
import 'package:buildnow/Shared/constants.dart';
import 'package:flutter/cupertino.dart';
//import 'package:buildnow/arrow_icons_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ApproachSection extends StatelessWidget {
  ApproachSection({Key? key}) : super(key: key);

  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.horizontal);

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
                Positioned(
                  top: 100,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            "MY\nAPPROACH",
                            style: GoogleFonts.passionOne(
                              color: backGroundTextColor,

                              fontWeight: FontWeight.bold,
                              fontSize: 100,
                              //overflow: TextOverflow.visible,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.arrow_down,
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
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Specify button
                        AutoScrollTag(
                          key: Key("ScrollDiscuss"),
                          controller: _scrollController,
                          index: Approach.discuss.index,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
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
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  CupertinoIcons.chat_bubble_2,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text("DISCUSS",
                                                  style:
                                                      mobileSubHeadingTextStyle),
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
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Let's get our brains warmed up. We will break down the problem, define it and out line possible solutions.",
                                                    textAlign: TextAlign.left,
                                                    style: mobileBodyTextStyle,
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
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 20),
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
                                                Icons.arrow_circle_down_rounded,
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
                            height: MediaQuery.of(context).size.height,
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
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  CupertinoIcons.map,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "PLAN",
                                                style:
                                                    mobileSubHeadingTextStyle,
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
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Together with a UI/UX expert of your choice or mine, we will create wireframes and mockups of the chosen solution.",
                                                    textAlign: TextAlign.left,
                                                    style: mobileBodyTextStyle,
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
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 20),
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
                                                Icons.arrow_circle_up_rounded,
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
                                                Icons.arrow_circle_down_rounded,
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
                            height: MediaQuery.of(context).size.height,
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
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
                                                child: Icon(
                                                  CupertinoIcons.gear,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "BUILD",
                                                style:
                                                    mobileSubHeadingTextStyle,
                                              )
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
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    "Let's put all our work into code. The development process begins. I will keep you updated based on the planned dates, making corrections as we head towards your desired product",
                                                    textAlign: TextAlign.left,
                                                    style: mobileBodyTextStyle,
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
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 20),
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
                                                Icons.arrow_circle_up_rounded,
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
