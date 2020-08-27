import 'package:flamera/constants.dart';
import 'package:flamera/utility/navbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.white.withOpacity(0.0),
    ));

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.white.withOpacity(0.0),
    ));

    return MaterialApp(
      title: 'Spotify UI',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kSecondaryColor,
          iconTheme: IconThemeData(color: Colors.white)),
      home: Container(
          color: kRandomColor.withOpacity(0.3),
          child: SafeArea(
            child: NavBar(),
          )),
    );
  }
}
