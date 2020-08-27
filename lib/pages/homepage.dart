import 'package:flamera/constants.dart';
import 'package:flamera/widgets/horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(gradient: bgGradient),
          width: size.width,
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(AntDesign.setting), onPressed: () {})
                ],
              ),
              HorizontalList(
                title: "Recently played",
                children: [
                  ArtistBox(index: 1),
                  ArtistBox(index: 0),
                  RestOfPlayLists(index: 1),
                ],
              ),
              HorizontalList(
                title: "Based on your recent listening",
                children: [
                  RestOfPlayLists(index: 1),
                  RestOfPlayLists(index: 2),
                  RestOfPlayLists(index: 3),
                ],
              ),
              HorizontalList(
                title: "For Your Listening Pleasure",
                children: [
                  RestOfPlayLists(index: 0),
                  RestOfPlayLists(index: 5),
                  ArtistBox(index: 1),
                  RestOfPlayLists(index: 3),
                ],
              ),
              HorizontalList(
                title: "Popular albums",
                children: [
                  RestOfPlayLists(index: 2),
                  RestOfPlayLists(index: 1),
                  RestOfPlayLists(index: 5),
                ],
              ),
              HorizontalList(
                title: "Summer sounds",
                children: [
                  RestOfPlayLists(index: 5),
                  RestOfPlayLists(index: 2),
                  RestOfPlayLists(index: 1),
                ],
              ),
              HorizontalList(
                title: "Trending now",
                children: [
                  RestOfPlayLists(index: 0),
                  RestOfPlayLists(index: 1),
                  RestOfPlayLists(index: 2),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
