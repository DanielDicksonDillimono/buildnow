//import 'package:buildnow/my_flutter_app_icons.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/build_now_icons_icons.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart' as newSVG;
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Stages { specify, design, implement }

class _HomePageState extends State<HomePage> {
  Stages selectedStage = Stages.specify;
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
                    child: SizedBox(
                      height: null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(50),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedStage = Stages.specify;
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
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Break down your problem and outline possible features of a solution",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                            color:
                                                selectedStage == Stages.specify
                                                    ? Colors.white
                                                    : Color.fromARGB(
                                                        100, 255, 255, 255),
                                            fontWeight: FontWeight.w100,
                                            fontSize:
                                                selectedStage == Stages.specify
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
                          Container(
                            padding: EdgeInsets.all(50),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedStage = Stages.design;
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
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Break down your problem and outline possible features of a solution",
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
                          Container(
                            padding: EdgeInsets.all(50),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedStage = Stages.implement;
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
                                          "Break down your problem and outline possible features of a solution",
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
                            padding: EdgeInsets.all(50),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: selectedStage == Stages.specify
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              image: Image.asset("Goals.jpeg")
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
                                                BuildNowIcons.specifyicon,
                                                size: 100,
                                                color: Colors.white,
                                              ),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(top: 5),
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
                                          padding: EdgeInsets.only(top: 50),
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
                                                      style: GoogleFonts
                                                          .montserrat(
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
                                              padding: EdgeInsets.only(top: 50),
                                              child: Text(
                                                "Design goes beyond what is seen!\nAt this stage you and I will create an awesom experience for your users",
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
                                                    shape:
                                                        RoundedRectangleBorder(
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
                                      : Column(
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
                                                  image:
                                                      Image.asset("coding.jpeg")
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
                                                    BuildNowIcons.implement,
                                                    size: 100,
                                                    color: Colors.white,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.only(top: 5),
                                                    child: Text(
                                                      "Build",
                                                      style: GoogleFonts
                                                          .montserrat(
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
                                              padding: EdgeInsets.only(top: 50),
                                              child: Text(
                                                "Let's code! building for web, mobile or both? Let us",
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
                                                    shape:
                                                        RoundedRectangleBorder(
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
                                                  "Build Now!",
                                                  style: GoogleFonts.montserrat(
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
                      Container(
                        padding: EdgeInsets.only(top: 20),
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
                                                  "Break down your problem and outline possible features of a solution",
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
                                                  "Break down your problem and outline possible features of a solution",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    color: selectedStage ==
                                                            Stages.implement
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
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
