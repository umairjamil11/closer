
import 'package:closer/screens/login/components/social_login_btn.dart';
import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(flex: 2),
        CustomSmallSocialLoginButton(
          buttonColor: Colors.transparent,
          onpress: () {},
          img: 'assets/images/in-icon.png',
        ),
        Spacer(),
        CustomSmallSocialLoginButton(
          buttonColor: Colors.transparent,
          onpress: () {},
          img: 'assets/images/apple.png',
        ),
        Spacer(flex: 2),
      ],
    );
  }
}