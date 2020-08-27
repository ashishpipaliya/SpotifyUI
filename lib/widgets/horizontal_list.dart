import 'package:cached_network_image/cached_network_image.dart';
import 'package:flamera/constants.dart';
import 'package:flamera/data_provider/artists_provider.dart';
import 'package:flamera/data_provider/playlist_provider.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @required
  final index, title;
  @required
  final List<Widget> children;

  HorizontalList({this.index = 1, this.title = "", this.children});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: titleFontStyle),
          ],
        ),
        SizedBox(height: 15.0),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: children,
            )),
        SizedBox(height: 40),
      ],
    );
  }
}

class ArtistBox extends StatelessWidget {
  final index;
  ArtistBox({this.index = 1});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          padding: EdgeInsets.only(bottom: 10.0),
          child: CircleAvatar(
            backgroundImage:
                CachedNetworkImageProvider(artistList[index].profilePic),
          ),
        ),
        Text(artistList[index].name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
      ],
    );
  }
}

class PlayListBox extends StatelessWidget {
  final index;
  PlayListBox({this.index = 1});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          padding: EdgeInsets.only(bottom: 10.0),
          child: Container(
              child: CachedNetworkImage(imageUrl: playList[index].coverPic)),
        ),
        Text(playList[index].name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
      ],
    );
  }
}

class RestOfPlayLists extends StatelessWidget {
  final index;
  RestOfPlayLists({this.index = 1});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 180,
          height: 180,
          padding: EdgeInsets.only(bottom: 10.0),
          child: Container(
              child: CachedNetworkImage(imageUrl: playList[index].coverPic)),
        ),
        Text(playList[index].name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))
      ],
    );
  }
}
