import 'package:drone_sports/constants.dart';

import 'package:drone_sports/tabs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../components/primary_btn.dart';
import '../../helper/keyboard_util.dart';
import '../size_config.dart';

class AuthScreen extends StatefulWidget {
  static const String pageId = "Auth";

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // Initially password is obscure
  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool _agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: getProportionateScreenHeight(72)),

                  const Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      child: Text(
                        'Sign in',
                        style: headingStyleOne,
                      ),
                    ),
                  ),
                  //////////////=====Sign in with username//////////////
                  SizedBox(height: getProportionateScreenHeight(24)),
                  buildUsernameFormField(),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  buildPasswordFormField(),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  const Text(
                    "8 character or more",
                    style: textStyleBlueOne,
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: getProportionateScreenHeight(48)),
                  //////////////Checkbox===Agree to terms//////////////
                  Row(
                    children: <Widget>[
                      Checkbox(
                        side: const BorderSide(color: kcolorPrimary),
                        checkColor: ktextColor,
                        fillColor:
                            MaterialStateProperty.all<Color>(kcolorPrimary),
                        value: _agreedToTerms,
                        onChanged: (value) {
                          setState(() {
                            _agreedToTerms = value!;
                          });
                        },
                      ),
                      const Text(
                        'I agree to receive newsletter and product update\nfrom Drone Soprts Live',
                        style: textStyleSmallOne,
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(48)),
                  ////////////// Login Button //////////////
                  PrimaryButton(
                    btnPress: () {
                      KeyboardUtil.hideKeyboard(context);
                      if (_formKey.currentState!.validate() &&
                          _agreedToTerms == true) {
                        _formKey.currentState!.save();
                        setState(() {});
                        KeyboardUtil.hideKeyboard(context);
                        Navigator.pushNamedAndRemoveUntil(
                            context, BottomMenuTabs.pageId, (route) => false);
                      }
                    },
                    btnText: 'Login',
                    primaryTextStyle: textStyleLargeOne,
                    primaryBtnColor: kcolorPrimary,
                  ),
                  SizedBox(height: getProportionateScreenHeight(24)),
                  //////////////FORGET PASSOWORD//////////////
                  Text(
                    "Forget password",
                    style: textStyleBlueOne.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(48)),
                  ////////////// DIVIDER //////////////
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            color: ktextColor.withOpacity(0.5),
                            height: 36,
                            thickness: 1.5,
                          )),
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: 14,
                          color: ktextColor,
                          height: 1.2,
                          fontWeight: FontWeight.w800),
                    ),
                    Expanded(
                      child: Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: Divider(
                            color: ktextColor.withOpacity(0.5),
                            height: 36,
                            thickness: 1.5,
                          )),
                    ),
                  ]),
                  SizedBox(height: getProportionateScreenHeight(24)),
                  ////////////// SOCIAL LOGINS//////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ////////////// GOOGLE LOGIN//////////////
                        ///TODO:Integrate Google Login
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {showSimpleNotification(
                                    const Text("Add Google login"),
                                    background: kcolorPrimary,
                                    position: NotificationPosition.bottom);},
                              icon: Image.asset('assets/images/google.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenHeight(4)),
                        ////////////// TWITER LOGIN//////////////
                        ///TODO:Integrate Twitter login
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {showSimpleNotification(
                                    const Text("Add Twitter login"),
                                    background: kcolorPrimary,
                                    position: NotificationPosition.bottom);},
                              icon: Image.asset('assets/images/twitter.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenHeight(4)),
                        ////////////// APPLE LOGIN//////////////
                        ///TODO:Integrate Apple Login
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {
                                // show a notification at top of screen.
                                showSimpleNotification(
                                    const Text("Add facebook login"),
                                    background: kcolorPrimary,
                                    position: NotificationPosition.bottom);
                              },
                              icon: const Icon(
                                Icons.facebook_rounded,
                                color: Color(0xFF1877F2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'Don\'t have an account?',
                              style: textStyleLargeOne,
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Sign up',
                                    style: textStyleBlueOne.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // navigate to desired screen
                                      })
                              ]),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      style: textStyleSmallOne,
      controller: passwordctrl,
      autocorrect: false,
      obscureText: _obscureText,
      enableSuggestions: false,
      cursorColor: kcolorPrimary,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            _formKey.currentState!.validate();
          });
        } else if (value.length >= 8) {
          setState(() {
            _formKey.currentState!.validate();
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kshortPassError;
        }
        return null;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: kcolorPrimary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: kcolorPrimary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: kcolorPrimary),
        ),
        labelText: "Password",
        hintText: 'Password',
        hintStyle: textStyleSmallTwo,
        filled: false,
        labelStyle: textStyleSmallOne,
        suffixIcon: GestureDetector(
          onTap: _toggle,
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: kcolorPrimary,
          ),
        ),
      ),
    );
  }

  TextFormField buildUsernameFormField() {
    return TextFormField(
      style: textStyleSmallOne,
      controller: emailctrl,
      cursorColor: kcolorPrimary,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => username = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: kcolorPrimary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: kcolorPrimary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: kcolorPrimary),
        ),
        labelStyle: textStyleSmallOne,
        focusColor: kcolorPrimary,
        labelText: "Username",
        hintText: 'Username',
        hintStyle: textStyleSmallTwo,
        filled: false,
      ),
    );
  }
}
