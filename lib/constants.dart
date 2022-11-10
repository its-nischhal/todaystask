import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

const defaultAppBarTheme=AppBarTheme(
backgroundColor: Color(0xFF003980),
foregroundColor: Color(0xFFFFFFFF));

var defaultTheme = ThemeData.light().copyWith(
appBarTheme: defaultAppBarTheme,
);

Color textFieldColor = const Color(0xFF767680).withOpacity(.12);

Color textFieldIconColor = const Color(0xFF3C3C43).withOpacity(.6);

const blueColor = Color(0xFF003980);

const redColor = Color(0xFFE22D2A);

const fadedTextColor = Color(0xFF706F6F);

const productTileTextStyle = TextStyle(
  fontSize: 12,
);