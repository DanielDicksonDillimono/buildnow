import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:buildnow/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentPage extends StatefulWidget {
  final String header;
  final ImagePosition imagePosition;
  final String content;
  const ContentPage(this.header, this.content, this.imagePosition, {Key? key})
      : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  bool animationDone = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(200),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Image.asset(
                  "Goals.jpeg",
                  colorBlendMode: BlendMode.screen,
                  color: Color.fromARGB(25, 255, 255, 255),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 100,
                    bottom: MediaQuery.of(context).size.height * 0.45,
                    //left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          animationDone
                              ? Text(
                                  "Bring your app ideas to life.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 70,
                                    //overflow: TextOverflow.visible,
                                  ),
                                  textAlign: TextAlign.right,
                                )
                              : AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  onNext: (stage, done) {},
                                  onFinished: () {
                                    setState(() {
                                      animationDone = true;
                                    });
                                  },
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      "Bring your app ideas to life.",
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 70,
                                      ),
                                      textAlign: TextAlign.right,
                                      speed: const Duration(milliseconds: 70),
                                    ),
                                  ],
                                ),
                          Text(
                            "Specify | Design | Build",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
