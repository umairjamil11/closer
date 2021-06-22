import 'package:closer/screens/signup/signup.dart';
import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Padding(
          padding: EdgeInsets.only(
              left: getWidth(20), top: getHeight(15), right: getWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                  child:
                      CustomBackButton(onpress: () => Navigator.pop(context)),
                  alignment: Alignment.centerLeft),
              buildTopTextOfLoginForm(),
              InkWell(
                  onTap: () => customNavigatorPush(context, SignUpScreen()),
                  child: buildCreateNewText()),
              buildCustomSignInTextField()
            ],
          ),
        ),
      )),
    );
  }
}
