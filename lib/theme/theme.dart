import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() => ThemeData(
    fontFamily: 'Poppins',
    highlightColor: whiteColor,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: inputDecorationTheme());

InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
      border: InputBorder.none,
      labelStyle: TextStyle(color: kPrimaryTextColor!),
      contentPadding: EdgeInsets.only(
          left: getWidth(15),
          right: getWidth(15),
          bottom: getHeight(10),
          top: getHeight(10)),
    );
