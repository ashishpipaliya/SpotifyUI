import 'package:flamera/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(
                  "Spotify CloneSpotify CloneSpotify CloneSpotify CloneSpotify Clone")
            ],
          ),
        ),
      ),
      body: Container(color: kPrimaryColor),
    );
  }
}
