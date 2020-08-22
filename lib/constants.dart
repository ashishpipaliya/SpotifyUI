import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0XFF1DB954);
const Color kSecondaryColor = Color(0XFF191414);
const Color kNavColor = Color(0XFF282729);

const LinearGradient bgGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  tileMode: TileMode.clamp,
  stops: [0.01, 0.3],
  colors: [kPrimaryColor, kSecondaryColor],
);

const titleFontStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500);
