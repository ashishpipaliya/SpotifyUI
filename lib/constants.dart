import 'dart:math';
import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0XFF1DB954);
const Color kSecondaryColor = Color(0XFF191414);
const Color kNavColor = Color(0XFF282729);
const Color kSearchBarColor = Color(0XFF4a4a4a);
const Color kTransparent = Colors.transparent;
Color kRandomColor =
    Colors.primaries[Random().nextInt(Colors.primaries.length)][200];

LinearGradient bgGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: FractionalOffset(0.1, 0.1),
  // tileMode: TileMode.clamp,
  // stops: [0.01, 0.1],
  colors: [kRandomColor, kSecondaryColor],
);

const titleFontStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500);
