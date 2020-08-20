import 'package:flamera/constants.dart';
import 'package:flamera/utility/navbar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify UI',
      theme:
          ThemeData(primaryColor: kPrimaryColor, accentColor: kSecondaryColor),
      home: NavBar(),
    );
  }
}
