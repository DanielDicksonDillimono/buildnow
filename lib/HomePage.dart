//import 'package:buildnow/my_flutter_app_icons.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:buildnow/Desktop/DeskTopView.dart';
import 'package:buildnow/Mobile/MobileView.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart' as newSVG;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? DeskTopView()
        //mobile block
        : MainMobileView();
  }
}
