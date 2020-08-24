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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light));
    //
    return MaterialApp(
      title: 'Spotify UI',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kSecondaryColor,
          iconTheme: IconThemeData(color: Colors.white)),
      home: NavBar(),
    );
  }
}
