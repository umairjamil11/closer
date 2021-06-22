import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/material.dart';

// create new account text
InkWell buildCreateNewText(BuildContext context) {
  return InkWell(
    // onTap: ()=>customNavigatorPush(ctx, page),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
            text: 'don\'t have an account? ',
            style: TextStyle(
                fontSize: getWidth(14),
                color: whiteColor!.withOpacity(0.5),
                fontWeight: FontWeight.normal),
            children: [
              TextSpan(
                text: 'Create New',
                style: TextStyle(
                  fontSize: getWidth(12),
                  color: whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
      ),
    ),
  );
}

buildTopText() => Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Hi,\nLogin Now',
        style: TextStyle(
            fontSize: getWidth(20),
            color: whiteColor,
            fontWeight: FontWeight.w500),
      ),
    );

Decoration loginDecoration() => BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            kPrimaryTextColor!.withOpacity(0.4), BlendMode.srcOver),
        image: AssetImage('assets/images/login-bg.png'),
      ),
    );
