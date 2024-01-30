
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:login_t/screens/login_2_screen.dart';
import 'package:login_t/screens/signup_screen.dart';
import 'package:login_t/widgets/blur_container.dart';
import 'package:login_t/widgets/button_card_large.dart';
import 'package:login_t/widgets/textfield_login.dart';

import '../constance/colors.dart';
import '../constance/screen_size.dart';
import '../constance/textStyle.dart';

import '../widgets/background_gym.dart';

double separatorHeight = 10;

Color secondaryTextColor = Colors.white;


TextStyle textButtonStyle = TextStyle(color: accentColor);
TextStyle textStyle = TextStyle(color: secondaryTextColor);

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundGym(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: _cardContainer(context),
        ),
      ],
    );
  }

  _cardContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "HI!",
              textAlign: TextAlign.left,
              style: h1,
            ),
          ),
          Center(
            child: ClipRect(
              child: BlurContainer(
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: separatorHeight),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFieldInputs(
                          labelText: 'Email',
                          textInputType: TextInputType.emailAddress,
                          obscureText: false,
                          suffixIcon: null, password: false,
                        )),
                    SizedBox(
                      height: separatorHeight,
                    ),
                    BtnCardLarge(
                      function: () {
                        //TODO Continue Function
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Login2Screen()));
                      },
                      label: 'Continue',
                      color: accentColor,
                      fontColor: Colors.white,
                    ),
                    SizedBox(
                      height: separatorHeight,
                    ),
                    const Text(
                      "or",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: separatorHeight,
                    ),
                    BtnCardLarge(
                      function: () {
                        //TODO facebook Function
                        debugPrint("pressed facebook");
                      },
                      label: 'Continue with Facebook',
                      color: Colors.white,
                      fontColor: Colors.black87,
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                    ),
                    SizedBox(
                      height: separatorHeight,
                    ),
                    BtnCardLarge(
                      function: () {
                        //TODO google Function
                        debugPrint("Pressed google");
                      },
                      label: 'Continue with Google',
                      color: Colors.white,
                      fontColor: Colors.black87,
                      icon: const FaIcon(FontAwesomeIcons.google),
                    ),
                    SizedBox(
                      height: separatorHeight,
                    ),
                    BtnCardLarge(
                      function: () {
                        //TODO apple Function
                        debugPrint("Pressed apple");
                      },
                      label: 'Continue with Apple',
                      color: Colors.white,
                      fontColor: Colors.black87,
                      icon: const FaIcon(FontAwesomeIcons.apple),
                    ),
                    SizedBox(
                      height: separatorHeight,
                    ),
                    SizedBox(
                      width: (ScreenSize.width! - 60),
                      child: Row(
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: textStyle,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const SignupScreen()));
                              },
                              child: Text(
                                "Sign up",
                                style: textButtonStyle,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: (ScreenSize.width! - 60),
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(50, 30),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                alignment: Alignment.centerLeft),
                            child: Text(
                              "Forgot Your Password?",
                              style: textButtonStyle,
                            ))),
                    Container(height: 50)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
