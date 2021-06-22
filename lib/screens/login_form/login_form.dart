import 'package:closer/screens/signup/signup.dart';
import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signInFormKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Form(
            key: signInFormKey,
            child: Container(
              width: screenWidth,
              height: screenHeight,
              child: Padding(
                padding: EdgeInsets.only(
                    left: getWidth(20),
                    top: getHeight(15),
                    right: getWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                        child: CustomBackButton(
                            onpress: () => Navigator.pop(context)),
                        alignment: Alignment.centerLeft),
                    Spacer(),
                    buildTopTextOfLoginForm(),
                    SizedBox(height: getHeight(20)),
                    InkWell(
                        onTap: () =>
                            customNavigatorPush(context, SignUpScreen()),
                        child: buildCreateNewText()),
                    Spacer(),
                    buildCustomSignInTextField(
                        label: 'Email',
                        onChanged: (val) {},
                        validator: SignInValidation().emailValidator,
                        obsecureText: false),
                    SizedBox(height: getHeight(20)),
                    buildCustomSignInTextField(
                        label: 'Password',
                        onChanged: (val) {},
                        validator: SignInValidation().passwordValidator,
                        obsecureText: true),
                    SizedBox(height: getHeight(40)),
                    buildCustomLoginButton(
                        onpress: () =>
                            signInFormKey.currentState!.validate() ? '' : ''),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class SignInValidation {
  RegExp emailRegExp = RegExp(
      "[a-z0-9!#&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

  // email
  String emailValidator(String? val) {
    if (val!.isEmpty) {
      return 'Email can\'t be empty';
    } else if (!emailRegExp.hasMatch(val)) {
      return 'Enter valid email';
    }
    return '';
  }

  String passwordValidator(String? val) {
    if (val!.isEmpty) {
      return 'Password can\'t be empty';
    } else if (val.length < 5) {
      return 'Password should be at least 5 characters';
    }
    return '';
  }
}
