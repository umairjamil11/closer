import 'package:closer/theme/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color? kPrimaryColor = Color(0xff0077B5);
final Color? kSecondryColor = Colors.black.withOpacity(0.5);
const Color? kPrimaryTextColor = Colors.black;
final Color? kSecondryTextColor = Colors.black.withOpacity(0.5);
const Color? kGreenColor = Color(0xff0E990B);
const Color? kErrorColor = Color(0xffFF4141);
const Color? whiteColor = Colors.white;
final screenHeight = SizeConfig.screenHeight;
final screenWidth = SizeConfig.screenWidth;

const Duration? kAnimationDuration = Duration(microseconds: 250);

customNavigatorPush(BuildContext ctx, Widget page) =>
    Navigator.of(ctx).push(CupertinoPageRoute(builder: (context) => page));
customNavigatorPushReplacement(BuildContext ctx, Widget page) =>
    Navigator.of(ctx)
        .pushReplacement(CupertinoPageRoute(builder: (context) => page));
