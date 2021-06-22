import 'package:closer/screens/home/components/social_login_btn.dart';
import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/material.dart';

import 'components/bottom_btns.dart';
import 'components/components.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: loginDecoration(),
      width: screenWidth,
      height: screenHeight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(flex: 2),
            buildTopText(),
            Spacer(),
            buildCreateNewText(context),
            Spacer(flex: 2),
            CustomSocialLoginButton(
              buttonColor: kPrimaryColor,
              image: 'assets/images/fbicon.png',
              onpress: () {},
              title: 'Login with Facebook',
            ),
            SizedBox(height: getHeight(20)),
            CustomSocialLoginButton(
              buttonColor: kErrorColor,
              image: 'assets/images/gicon.png',
              onpress: () {},
              title: 'Login with Google',
            ),
            SizedBox(height: getHeight(20)),
            CustomLoginButton(
              buttonColor: Colors.transparent,
              onpress: () {},
              title: 'Login Now',
            ),
            Spacer(),
            Center(
              child: Text(
                'or you can login with',
                style: TextStyle(
                  color: whiteColor!.withOpacity(0.8),
                ),
              ),
            ),
            Spacer(flex: 3),
            // bottom login buttons
            BottomButtons(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
