import 'package:closer/theme/constants.dart';
import 'package:closer/theme/size_config.dart';
import 'package:flutter/material.dart';

// back button
class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, this.onpress}) : super(key: key);
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getWidth(50),
          ),
          border: Border.all(color: kSecondryColor!.withOpacity(0.3))),
      width: getWidth(40),
      height: getHeight(40),
      child: IconButton(
        onPressed: onpress,
        iconSize: getWidth(20),
        icon: Icon(Icons.arrow_back, color: kSecondryColor),
      ),
    );
  }
}

// toptext
buildTopTextOfLoginForm() => Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Hi,\nLogin Now',
        style: TextStyle(
            fontSize: getWidth(20),
            color: kPrimaryTextColor,
            fontWeight: FontWeight.w500),
      ),
    );

// create account text button
buildCreateNewText() => Align(
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
            text: 'don\'t have an account? ',
            style: TextStyle(
                color: kPrimaryTextColor!.withOpacity(0.5),
                fontWeight: FontWeight.normal),
            children: [
              TextSpan(
                text: 'Create New',
                style: TextStyle(
                  color: kPrimaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
      ),
    );

// signin textfield
buildCustomSignInTextField(
        {@required String? label, @required Function(String)? onChanged}) =>
    Container(
      width: 55,
      height: getHeight(70),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: kSecondryTextColor!.withOpacity(0.2))),
      child: TextFormField(
        cursorColor: kSecondryTextColor!.withOpacity(0.1),
        onChanged: onChanged,
        decoration: InputDecoration(
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.always),
      ),
    );
