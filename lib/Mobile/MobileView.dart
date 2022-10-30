import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:buildnow/Mobile/AboutMeSection.dart';
import 'package:buildnow/Mobile/ApproachSection.dart';
import 'package:buildnow/Mobile/IntroSection.dart';
import 'package:buildnow/Mobile/ValueOffered.dart';
import 'package:buildnow/Mobile/contactPage.dart';

import 'package:buildnow/constants.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/onboarding.dart';

class MainMobileView extends StatefulWidget {
  const MainMobileView({Key? key}) : super(key: key);

  @override
  State<MainMobileView> createState() => _MainMobileViewState();
}

class _MainMobileViewState extends State<MainMobileView> {
  final ScrollController _scrollControllerMainView = ScrollController();
  bool animateButton = false;

  Widget? floatingActionbutton;
  int pageIndex = 0;

  final pages = [
    PageModel(widget: IntroSection()),
    PageModel(widget: ValueSection()),
    PageModel(widget: ApproachSection()),
    PageModel(widget: AboutMeSection()),
    PageModel(widget: ContactPage()),
  ];

  @override
  void didUpdateWidget(covariant MainMobileView oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    //_scrollController.position.removeListener(() { })
    super.dispose();
  }

  void goToContactForm() {
    Navigator.pushNamed(context, '/Contact');
  }

  Widget determineNavigationButton(Function(int) setIndexFunc) {
    switch (pageIndex) {
      case 0:
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                setIndexFunc(1);
                pageIndex = 1;
              },
              child: Text(
                "What I do",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );

      case 1:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setIndexFunc(0);
                pageIndex = 0;
              },
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.grey,
              ),
            ),
            TextButton(
              onPressed: () {
                setIndexFunc(2);
                pageIndex = 2;
              },
              child: Text(
                "Approach",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );

      case 2:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                setIndexFunc(1);
                pageIndex = 1;
              },
              child: Text(
                "What I do",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setIndexFunc(3);
                pageIndex = 3;
              },
              child: Text(
                "Me",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );

      case 3:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                setIndexFunc(2);
                pageIndex = 2;
              },
              child: Text(
                "Approach",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setIndexFunc(4);
                pageIndex = 4;
              },
              child: Text(
                "Contact",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      case 4:
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                setIndexFunc(3);
                pageIndex = 3;
              },
              child: Text(
                "Me",
                style: GoogleFonts.montserrat(
                  //fontSize: 50,
                  // fontSize: MediaQuery.of(
                  //             context)
                  //         .size
                  //         .width *
                  //     0.05,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      default:
        return SizedBox();
    }
  }

  Widget? createFloatingActionButton() {
    floatingActionbutton;
    setState(() {
      if (_scrollControllerMainView.hasClients) {
        if (_scrollControllerMainView.offset !=
            _scrollControllerMainView.position.minScrollExtent) {
          floatingActionbutton = Hero(
            tag: "ChatButton",
            child: ElevatedButton.icon(
              style: actionButtonStyle,
              onPressed: goToContactForm,
              icon: Icon(Icons.send),
              label: animateButton
                  ? AnimatedTextKit(
                      totalRepeatCount: 2,
                      onFinished: (() => setState(() {
                            animateButton = false;
                          })),
                      animatedTexts: [
                        TyperAnimatedText(
                          "Let's chat",
                          textStyle: GoogleFonts.montserrat(
                            //fontSize: 50,
                            // fontSize: MediaQuery.of(
                            //             context)
                            //         .size
                            //         .width *
                            //     0.05,
                            fontWeight: FontWeight.w700,
                          ),
                          speed: const Duration(milliseconds: 50),
                        ),
                      ],
                    )
                  : Text(
                      "Let's chat",
                      style: GoogleFonts.montserrat(
                        //fontSize: 50,
                        // fontSize:
                        //     MediaQuery.of(context)
                        //             .size
                        //             .width *
                        //         0.05,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
            ),
          );
        } else if (_scrollControllerMainView.offset ==
            _scrollControllerMainView.position.minScrollExtent) {
          floatingActionbutton = null;
        }
      }
    });
    return floatingActionbutton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Onboarding(
      pages: pages,
      onPageChange: (newIndex) {
        pageIndex = newIndex;
      },
      startPageIndex: 0,
      footerBuilder: (context, dragDistance, pageslength, setIndex) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.0,
                color: background,
              ),
            ),
            child: ColoredBox(
              color: background,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIndicator(
                      netDragPercent: dragDistance,
                      indicator: Indicator(
                        indicatorDesign: IndicatorDesign.line(
                          lineDesign: LineDesign(
                            lineType: DesignType.line_uniform,
                          ),
                        ),
                        // indicatorDesign:
                      ),
                      pagesLength: pageslength,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     pageIndex > 0
                    //         ? InkWell(
                    //             onTap: () {
                    //               setIndex(pageIndex - 1);
                    //               pageIndex -= 1;
                    //             },
                    //             child: Icon(
                    //               CupertinoIcons.arrow_left,
                    //               color: Colors.white,
                    //             ),
                    //           )
                    //         : SizedBox(),
                    //     InkWell(
                    //       onTap: () {
                    //         setIndex(pageIndex + 1);
                    //         pageIndex += 1;
                    //       },
                    //       child: Icon(
                    //         CupertinoIcons.arrow_right,
                    //         color: Colors.white,
                    //       ),
                    //     )
                    //   ],
                    // )
                    determineNavigationButton(setIndex)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    )

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
        // ),
        );
  }
}
