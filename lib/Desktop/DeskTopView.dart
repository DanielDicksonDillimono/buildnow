import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/Desktop/DeskTopAboutMe.dart';
import 'package:buildnow/Desktop/DeskTopHomePage.dart';
import 'package:buildnow/Desktop/DeskTopRealizePage.dart';
import 'package:buildnow/Desktop/DesktopApproach.dart';
import 'package:buildnow/Shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart' as newSVG;
import 'package:google_fonts/google_fonts.dart';

class DeskTopView extends StatefulWidget {
  const DeskTopView({Key? key}) : super(key: key);

  @override
  State<DeskTopView> createState() => _DeskTopViewState();
}

class _DeskTopViewState extends State<DeskTopView> {
  bool aboutToClick = false;
  bool hoveringOver = false;

  DesktopPages currentpage = DesktopPages.home;

  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  void changePage(DesktopPages selectedPage) {
    setState(() {
      currentpage = selectedPage;
    });
  }

  Widget returnCurrentPage() {
    switch (currentpage) {
      case DesktopPages.home:
        return DeskTopHomePage();
      case DesktopPages.realize:
        return DeskTopRealizePage();
      case DesktopPages.approach:
        return DesktopApproachPage();
      case DesktopPages.aboutMe:
        return DeskTopAboutMePage();

      default:
        return DeskTopHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        shadowColor: Color.fromARGB(17, 0, 0, 0),
        actions: [
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.home);
              },
              child: Text(
                "Home",
                style: currentpage == DesktopPages.home
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.realize);
              },
              child: Text(
                "Realize",
                style: currentpage == DesktopPages.realize
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.approach);
              },
              child: Text(
                "Approach",
                style: currentpage == DesktopPages.approach
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          Container(
            padding: navbarButtonPadding,
            child: TextButton(
              onPressed: () {
                changePage(DesktopPages.aboutMe);
              },
              child: Text(
                "About me",
                style: currentpage == DesktopPages.aboutMe
                    ? navBarTextStyle
                    : navBarTextStyle.copyWith(
                        fontSize: 15,
                      ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          )
        ],
      ),
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                    "Hi, I'm Daniel and I build",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 26,
                                      //overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  // Text(
                                  //   "Daniel",
                                  //   style: subHeadingTextStyle,
                                  // ),
                                  Text(
                                    "Mobile and the Web applications",
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
                                                      GoogleFonts.montserrat(
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
                        color: Colors.white,
                        thickness: 2,
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.phone,
                            color: Colors.white,
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
                            color: Colors.white,
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
                            color: Colors.white,
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
                )
              ],
            ),
          ),

          //view column
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.7,
            color: Color.fromARGB(255, 38, 38, 38),
            child: SingleChildScrollView(child: returnCurrentPage()),
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
    );
  }
}
