//import 'package:buildnow/my_flutter_app_icons.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/build_now_icons_icons.dart';
import 'package:buildnow/linkedIn.dart';
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

class _HomePageState extends State<HomePage> {
  Stages selectedStage = Stages.build;
  final AutoScrollController _scrollController =
      AutoScrollController(axis: Axis.vertical);
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(255, 36, 36, 36),
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: SizedBox(
                      height: null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AutoScrollTag(
                            key: Key("ScrollPosBuild"),
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
                                    CircleAvatar(
                                      backgroundImage: Image.asset(
                                        "BuildNowAppIcon.png",
                                      ).image,
                                      radius:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 5),
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
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Start the build-measure-learn cycle by turning your idea into a functional application. Enable rapid validation of your core idea.",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 20,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          Text(
                                            "From: Eur 899,-",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              fontStyle: FontStyle.italic,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100,
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

                          //Specify button
                          AutoScrollTag(
                            key: Key("ScrollPosSpecify"),
                            controller: _scrollController,
                            index: Stages.specify.index,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedStage = Stages.specify;
                                    _scrollController.scrollToIndex(
                                      Stages.build.index,
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
                                      : Color.fromARGB(12, 255, 255, 255),
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Hero(
                                            tag: "SpecifyIcon",
                                            child: Icon(
                                              BuildNowIcons.specifyicon,
                                              size: selectedStage ==
                                                      Stages.specify
                                                  ? 100
                                                  : 50,
                                              color: selectedStage ==
                                                      Stages.specify
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
                                              color: selectedStage ==
                                                      Stages.specify
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      100, 255, 255, 255),
                                              fontWeight: FontWeight.bold,
                                              fontSize: selectedStage ==
                                                      Stages.specify
                                                  ? 40
                                                  : 20,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Break down your problem and outline possible features of a solution",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color: selectedStage ==
                                                      Stages.specify
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      100, 255, 255, 255),
                                              fontWeight: FontWeight.w100,
                                              fontSize: selectedStage ==
                                                      Stages.specify
                                                  ? 20
                                                  : 15,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //design button
                          AutoScrollTag(
                            key: Key("ScrollPosDesign"),
                            controller: _scrollController,
                            index: Stages.design.index,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedStage = Stages.design;
                                    _scrollController
                                        .scrollToIndex(Stages.me.index);
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
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Hero(
                                            tag: "DesignIcon",
                                            child: Icon(
                                              BuildNowIcons.design,
                                              size:
                                                  selectedStage == Stages.design
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
                                        Container(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Create all user flows and a full visual representation of your solution.",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color:
                                                  selectedStage == Stages.design
                                                      ? Colors.white
                                                      : Color.fromARGB(
                                                          100, 255, 255, 255),
                                              fontWeight: FontWeight.w100,
                                              fontSize:
                                                  selectedStage == Stages.design
                                                      ? 20
                                                      : 15,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //implement
                          AutoScrollTag(
                            key: Key("ScrollPosImp"),
                            controller: _scrollController,
                            index: Stages.implement.index,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedStage = Stages.implement;
                                    _scrollController.scrollToIndex(5);
                                  });
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  elevation:
                                      selectedStage == Stages.design ? 20 : 5,
                                  color: selectedStage == Stages.implement
                                      ? Color.fromARGB(17, 255, 255, 255)
                                      : Color.fromARGB(12, 255, 255, 255),
                                  child: Container(
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
                                        Container(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Finally, a functional Solution!",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color: selectedStage ==
                                                      Stages.implement
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      100, 255, 255, 255),
                                              fontWeight: FontWeight.w100,
                                              fontSize: selectedStage ==
                                                      Stages.implement
                                                  ? 20
                                                  : 15,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        )
                                      ],
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

                          //Me
                          AutoScrollTag(
                            key: Key("ScrollPosMe"),
                            controller: _scrollController,
                            index: Stages.me.index,
                            child: Container(
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
                                    CircleAvatar(
                                      backgroundImage: Image.asset(
                                        "me.jpg",
                                      ).image,
                                      radius: selectedStage == Stages.me
                                          ? MediaQuery.of(context).size.width *
                                              0.10
                                          : MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Daniel Dickson",
                                            style: GoogleFonts.montserrat(
                                              color: selectedStage == Stages.me
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      100, 255, 255, 255),
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  selectedStage == Stages.me
                                                      ? 40
                                                      : 20,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          Text(
                                            "Your Developer",
                                            style: GoogleFonts.montserrat(
                                              color: selectedStage == Stages.me
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      100, 255, 255, 255),
                                              fontWeight: FontWeight.w200,
                                              fontSize:
                                                  selectedStage == Stages.me
                                                      ? 20
                                                      : null,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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

                          AutoScrollTag(
                            key: Key("SpaceWidget"),
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
                                        FontAwesomeIcons.phone,
                                        color:
                                            Color.fromARGB(100, 255, 255, 255),
                                      ),
                                      title: Text(
                                        "+31684555925",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w100,
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
                                        color:
                                            Color.fromARGB(100, 255, 255, 255),
                                      ),
                                      title: Text(
                                        "info@buildnow.dev",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w100,
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
                                        FontAwesomeIcons
                                            .buildingCircleArrowRight,
                                        color:
                                            Color.fromARGB(100, 255, 255, 255),
                                      ),
                                      title: Column(
                                        children: [
                                          Text(
                                            "Deeformed BV",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 15,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          Text(
                                            "KVK 83590668",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 15,
                                              //overflow: TextOverflow.visible,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   padding: EdgeInsets.only(top: 10),
                                  //   child: ListTile(
                                  //     // leading: Icon(
                                  //     //   FontAwesomeIcons
                                  //     //       .buildingCircleArrowRight,
                                  //     //   color: Colors.white,
                                  //     // ),
                                  //     title: Text(
                                  //       "KVK 83590668",
                                  //       textAlign: TextAlign.center,
                                  //       style: GoogleFonts.montserrat(
                                  //         color: Colors.white,
                                  //         fontWeight: FontWeight.w100,
                                  //         fontSize: 15,
                                  //         //overflow: TextOverflow.visible,
                                  //       ),
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

                //Display COlumn
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Color.fromARGB(255, 38, 38, 38),
                  child: SingleChildScrollView(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Center(
                          child: Container(
                            // padding: EdgeInsets.all(20),
                            child: selectedStage == Stages.specify
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.45,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                Image.asset("Goals.jpeg").image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(top: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              BuildNowIcons.specifyicon,
                                              size: 100,
                                              color: Colors.white,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Specify",
                                                style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 40,
                                                  //overflow: TextOverflow.visible,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(50),
                                        child: Text(
                                          "Every problem deserves a unique approach.\nAt this stage you and I will find out what exactly the problem is, who we are solving the problem for and what is a feasible solution.",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100,
                                            fontSize: 20,
                                            //overflow: TextOverflow.visible,
                                          ),
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
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              minimumSize: Size(200, 50)),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                              context,
                                              '/home',
                                            );
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward,
                                          ),
                                          label: Text(
                                            "Specify Now!",
                                            style: GoogleFonts.montserrat(
                                                //fontSize: 50,
                                                // fontWeight: FontWeight.w900,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : selectedStage == Stages.design
                                    ? Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.45,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: Image.asset("Ui.jpeg")
                                                    .image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            padding: EdgeInsets.only(top: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  BuildNowIcons.design,
                                                  size: 100,
                                                  color: Colors.white,
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(top: 5),
                                                  child: Text(
                                                    "Design",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 40,
                                                      //overflow: TextOverflow.visible,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(50),
                                            child: Text(
                                              "Design goes beyond what is seen!\nAt this stage you and I will create an awesome experience for your users. Create all user flows and a full visual representation of your solution.",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w100,
                                                fontSize: 20,
                                                //overflow: TextOverflow.visible,
                                              ),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  minimumSize: Size(200, 50)),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/home',
                                                );
                                              },
                                              icon: Icon(
                                                Icons.arrow_forward,
                                              ),
                                              label: Text(
                                                "Design Now!",
                                                style: GoogleFonts.montserrat(
                                                    //fontSize: 50,
                                                    // fontWeight: FontWeight.w900,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : selectedStage == Stages.me
                                        ? Center(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              // decoration: BoxDecoration(
                                              //   shape: BoxShape.circle,
                                              //   color: Colors.white,
                                              // ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      top: 50,
                                                    ),
                                                    child: CircleAvatar(
                                                      backgroundImage:
                                                          Image.asset("me.jpg")
                                                              .image,
                                                      radius:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.10,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Text(
                                                      "Flutter Developer <>",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Colors.white,

                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                        //overflow: TextOverflow.visible,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Text(
                                                      "Hi my name is Daniel Dickson Dillimono. I know what it feels like to have an idea stuck in your head and the desire to turn that into something tangible. Always ready to brainstorm your ideas, design them and bring them to reality in mobile, web or desktop form. Do not wait, reachout and let's BUILDNOW!",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Colors.white,

                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 15,
                                                        //overflow: TextOverflow.visible,
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
                                                        style: ElevatedButton
                                                            .styleFrom(
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
                                                        style: ElevatedButton
                                                            .styleFrom(
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
                                          )
                                        : selectedStage == Stages.build
                                            ? Column(
                                                children: [
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.45,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.7,
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Image.asset(
                                                        "AppImage.PNG"),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(50),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Start the build-measure-learn cycle by turning your idea into a functional application. Enable rapid validation of your core idea.",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w100,
                                                            fontSize: 20,
                                                            //overflow: TextOverflow.visible,
                                                          ),
                                                        ),
                                                        Text(
                                                          "From: Eur 899,-",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            fontStyle: FontStyle
                                                                .italic,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w100,
                                                            fontSize: 20,
                                                            //overflow: TextOverflow.visible,
                                                          ),
                                                        ),
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
                                                              minimumSize: Size(
                                                                  200, 50)),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                          context,
                                                          '/home',
                                                        );
                                                      },
                                                      icon: Icon(
                                                        Icons.arrow_forward,
                                                      ),
                                                      label: Text(
                                                        "Build Now!",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                //fontSize: 50,
                                                                //fontWeight: FontWeight.w900,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.45,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.7,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: Image.asset(
                                                                "coding.jpeg")
                                                            .image,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        top: 20),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          BuildNowIcons
                                                              .implement,
                                                          size: 100,
                                                          color: Colors.white,
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: Text(
                                                            "Build",
                                                            style: GoogleFonts
                                                                .montserrat(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 40,
                                                              //overflow: TextOverflow.visible,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(50),
                                                    child: Text(
                                                      "Let's code! building for web, mobile or both? Let us finally get down to it. Turn your solution into a functional working application.",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        fontSize: 20,
                                                        //overflow: TextOverflow.visible,
                                                      ),
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
                                                              minimumSize: Size(
                                                                  200, 50)),
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                          context,
                                                          '/home',
                                                        );
                                                      },
                                                      icon: Icon(
                                                        Icons.arrow_forward,
                                                      ),
                                                      label: Text(
                                                        "Build Now!",
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                //fontSize: 50,
                                                                //fontWeight: FontWeight.w900,
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
              ],
            ),
            floatingActionButton: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_circle_left_rounded,
              ),
            ),
          )
        //mobile block
        : Scaffold(
            body: Container(
              color: Color.fromARGB(255, 36, 36, 36),
              //width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // decoration: BoxDecoration(
                          //   shape: BoxShape.circle,
                          //   color: Colors.white,
                          // ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: Image.asset("me.jpg").image,
                                radius:
                                    MediaQuery.of(context).size.width * 0.20,
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
                                  "Hi my name is Daniel Dickson Dillimono, Daniel for short. I know what it feels like to have an idea stuck in your head and the desire to turn that into something tangible. Always ready to brainstorm your ideas, design them and bring them to reality in mobile, web or desktop form. Do not wait, reachout and let's BUILDNOW!",
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
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Divider(
                          color: Color.fromARGB(123, 158, 158, 158),
                          thickness: 0.5,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedStage = Stages.specify;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: selectedStage == Stages.specify ? 20 : 5,
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
                                          size: selectedStage == Stages.specify
                                              ? 100
                                              : 50,
                                          color: selectedStage == Stages.specify
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
                                          color: selectedStage == Stages.specify
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
                                                  "Break down your problem and outline possible features of a solution",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    color: selectedStage ==
                                                            Stages.specify
                                                        ? Colors.white
                                                        : Color.fromARGB(
                                                            100, 255, 255, 255),
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: selectedStage ==
                                                            Stages.specify
                                                        ? 20
                                                        : 15,
                                                    //overflow: TextOverflow.visible,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  top: 20,
                                                ),
                                                child: ElevatedButton.icon(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 10,
                                                          primary: Colors.blue,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          minimumSize:
                                                              Size(200, 50)),
                                                  onPressed: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/home',
                                                    );
                                                  },
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
                                        : SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedStage = Stages.design;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: selectedStage == Stages.design ? 20 : 5,
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
                                          color: selectedStage == Stages.design
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
                                          color: selectedStage == Stages.design
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
                                                  "Create all user flows and a full visual representation of your solution.",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    color: selectedStage ==
                                                            Stages.design
                                                        ? Colors.white
                                                        : Color.fromARGB(
                                                            100, 255, 255, 255),
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: selectedStage ==
                                                            Stages.design
                                                        ? 20
                                                        : 15,
                                                    //overflow: TextOverflow.visible,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  top: 20,
                                                ),
                                                child: ElevatedButton.icon(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 10,
                                                          primary: Colors.blue,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          minimumSize:
                                                              Size(200, 50)),
                                                  onPressed: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/home',
                                                    );
                                                  },
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
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: InkWell(
                          onTap: () {
                            setState(
                              () {
                                selectedStage = Stages.implement;
                              },
                            );
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: selectedStage == Stages.design ? 20 : 5,
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
                                          size:
                                              selectedStage == Stages.implement
                                                  ? 100
                                                  : 50,
                                          color:
                                              selectedStage == Stages.implement
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
                                          color:
                                              selectedStage == Stages.implement
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      100, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              selectedStage == Stages.implement
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
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Finally! let's get down to it. Let's turn your designs into a functional working application.",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    color: selectedStage ==
                                                            Stages.implement
                                                        ? Colors.white
                                                        : Color.fromARGB(
                                                            100, 255, 255, 255),
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: selectedStage ==
                                                            Stages.implement
                                                        ? 20
                                                        : 15,
                                                    //overflow: TextOverflow.visible,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  top: 20,
                                                ),
                                                child: ElevatedButton.icon(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 10,
                                                          primary: Colors.blue,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          minimumSize:
                                                              Size(200, 50)),
                                                  onPressed: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/home',
                                                    );
                                                  },
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
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
