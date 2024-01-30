
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_t/widgets/blur_container.dart';
import 'package:login_t/widgets/button_card_large.dart';
import 'package:login_t/widgets/textfield_login.dart';
import '../constance/colors.dart';
import '../constance/textStyle.dart';
import '../widgets/background_gym.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      BackgroundGym(),
      Scaffold(backgroundColor: Colors.transparent, body: _CardWid())
    ]);
  }
}

class _CardWid extends StatelessWidget {
  const _CardWid({super.key});

  @override
  Widget build(BuildContext context) {
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
              "Sign Up",
              textAlign: TextAlign.left,
              style: h1,
            ),
          ),
          Center(
              child: BlurContainer(
            widget: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                    text: const TextSpan(
                        text:
                            "Looks like you don't have an account. Let's create a new account for ",
                        children: [
                          TextSpan(
                              text: "john.doe@gmail.com",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                  ),
                ),
                SizedBox(height: separatorHeight),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFieldInputs(
                    labelText: "Username",
                    textInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: null, password: false,
                  ),
                ),
                SizedBox(
                  height: separatorHeight,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFieldInputs(
                    labelText: "Password",
                    textInputType: TextInputType.text,
                    obscureText: true,
                    suffixIcon: FaIcon(FontAwesomeIcons.eye), password: true,
                  ),
                ),
                SizedBox(
                  height: separatorHeight + 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                        text:
                            "By selecting Agree and continue below, I agree to ",
                        style: textStyle,
                        children: [
                          TextSpan(
                              text: 'Terms of Service and Privacy Policy',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  debugPrint("term and conditions");
                                },
                              style: TextStyle(
                                  color: accentColor,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ),
                SizedBox(
                  height: separatorHeight + 10,
                ),
                BtnCardLarge(
                  function: () {
                    //TODO Continue Function
                    debugPrint("pressed agree and continue");
                  },
                  label: 'Agree and continue',
                  color: accentColor,
                  fontColor: Colors.white,
                ),
                SizedBox(
                  height: separatorHeight,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
