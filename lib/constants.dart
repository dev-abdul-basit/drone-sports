import 'package:drone_sports/screens/size_config.dart';
import 'package:flutter/material.dart';

const Color kcolorPrimary = Color(0xFF00E0FF);
const Color ktextColor = Color(0xFFFFFFFF);
const Color kBgColor = Color(0XFF000000);
const Color kColorRed = Color(0xFFFF0000);
const Color kdividerColor = Color(0x1F000000);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF00E0FF), Color(0xFF45B0ED)],
);

//Headings
const headingStyleOne = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: ktextColor,
  fontStyle: FontStyle.normal,
  height: 1.5,
  fontFamily: 'Satoshi',
);
const headingStyleTwo = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.normal,
  color: ktextColor,
  height: 1.0,
  fontFamily: 'Satoshi-bold',
);
const headingStyleThree = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  color: ktextColor,
  fontStyle: FontStyle.normal,
  //height:,
  fontFamily: 'Satoshi-bold',
);

//Text
const textStyleLargeOne = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: ktextColor,
  fontStyle: FontStyle.normal,
  fontFamily: 'Satoshi-bold',
);
const textStyleLargeTwo = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: ktextColor,
    fontStyle: FontStyle.normal,
    fontFamily: 'Satoshi-bold',
    height: 1.5);
const textStyleSmallOne = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: ktextColor,
  fontStyle: FontStyle.normal,
  //height: getDeviceDensity(24),
  fontFamily: 'Satoshi',
);
const textStyleSmallTwo = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: ktextColor,
  fontStyle: FontStyle.normal,
  //height: ,
  fontFamily: 'Satoshi',
);
const textStyleBlueOne = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  color: kcolorPrimary,
  fontStyle: FontStyle.normal,
  //height: ,
  fontFamily: 'Satoshi',
);
const textStyleBlueTwo = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: kcolorPrimary,
  fontStyle: FontStyle.normal,
  //height: ,
  fontFamily: 'Satoshi',
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kshortPassError = "Please must be 8 characters or more";
const String kFormError = "Please fill this";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: ktextColor),
  );
}
