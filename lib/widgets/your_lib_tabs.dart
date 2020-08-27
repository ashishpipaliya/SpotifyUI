import 'package:flutter/material.dart';

// Tabs List
List<Tab> parentTabs = [
  Tab(text: 'Music'),
  Tab(text: 'Podcasts'),
];

List<Tab> nestedTabs = [
  Tab(text: 'Playlists'),
  Tab(text: 'Artists'),
  Tab(text: 'Albums')
];

// Tabs View
List<Widget> parentsView = [
  Column(
    children: [
      Text("Music"),
      DefaultTabController(length: nestedTabs.length, child: null)
    ],
  ),
  Container(
    child: Text("Podcasts"),
  )
];

List<Widget> nestedsView = [
  Container(
    child: Text("Playlists"),
  ),
  Container(
    child: Text("Artists"),
  ),
  Container(
    child: Text("Albums"),
  ),
];
