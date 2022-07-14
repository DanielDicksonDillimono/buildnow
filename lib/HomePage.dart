import 'package:buildnow/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 600,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.asset("DeskTopView.png").image,
                        fit: BoxFit.cover,
                        colorFilter: const ColorFilter.mode(
                          Color.fromARGB(72, 0, 0, 0),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     gradient: RadialGradient(
                  //       colors: [
                  //         Color.fromARGB(255, 255, 255, 255),
                  //         Color.fromARGB(0, 255, 255, 255),
                  //         Color.fromARGB(172, 255, 255, 255),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Center(
                    child: const Text(
                      "Start anywhere!\nSpecify, Design, Implement",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 10,
                    right: 10,
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: Hero(
                                  tag: "Specify",
                                  child: Icon(
                                    MyFlutterApp.specifyicon,
                                    color: Colors.blue,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: Hero(
                                  tag: "Design",
                                  child: Icon(
                                    MyFlutterApp.designicon,
                                    color: Colors.blue,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: Hero(
                                  tag: "Implement",
                                  child: Icon(
                                    MyFlutterApp.implement,
                                    color: Colors.blue,
                                    size: 50,
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
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_circle_left_rounded,
        ),
      ),
    );
  }
}
