import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// long social login button
class CustomSocialLoginButton extends StatelessWidget {
  final String? title, image;
  final Function()? onpress;
  final Color? buttonColor;

  const CustomSocialLoginButton(
      {@required this.title,
      this.image,
      @required this.onpress,
      @required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(8)),
        width: screenWidth! * 0.85,
        height: getHeight(65),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title!, style: TextStyle(color: whiteColor)),
              Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(50)),
                width: getWidth(30),
                height: getWidth(30),
                child: Image.asset(image!),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// login text button
class CustomLoginButton extends StatelessWidget {
  final String? title;
  final Function()? onpress;
  final Color? buttonColor;

  const CustomLoginButton(
      {@required this.title,
      @required this.onpress,
      @required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: whiteColor!),
          color: buttonColor,
          borderRadius: BorderRadius.circular(8)),
      width: screenWidth! * 0.85,
      height: getHeight(65),
      child: TextButton(
        onPressed: onpress,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title!, style: TextStyle(color: whiteColor)),
              Icon(CupertinoIcons.arrow_right, color: whiteColor)
            ],
          ),
        ),
      ),
    );
  }
}

// small social login Button
class CustomSmallSocialLoginButton extends StatelessWidget {
  final String? img;
  final Function()? onpress;
  final Color? buttonColor;

  const CustomSmallSocialLoginButton(
      {@required this.img, @required this.onpress, @required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: whiteColor!),
            color: buttonColor,
            borderRadius: BorderRadius.circular(8)),
        width: getWidth(50),
        height: getHeight(50),
        child: TextButton(
          onPressed: onpress,
          child: Center(
            child: Image.asset(
              img!,
              color: whiteColor,
            ),
          ),
        ));
  }
}
