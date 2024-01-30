
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_t/screens/login_screen.dart';
import 'package:login_t/widgets/blur_container.dart';
import 'package:login_t/widgets/button_card_large.dart';
import 'package:login_t/widgets/textfield_login.dart';
import '../constance/colors.dart';
import '../constance/textStyle.dart';
import '../widgets/background_gym.dart';

class Login2Screen extends StatelessWidget {
  const Login2Screen({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundGym(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: _cardContainer(),
        ),
      ],
    );
  }

  _cardContainer() {
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
              "Login",
              textAlign: TextAlign.left,
              style: h1,
            ),
          ),
          Center(
              child: BlurContainer(
            widget: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: accentColor,
                    child: const Text("JD"),
                  ),
                  title: const Text(
                    "JohnDoe",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    "johndoe@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: separatorHeight,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFieldInputs(
                      labelText: "Password",
                      textInputType: TextInputType.text,
                      obscureText: true,
                      suffixIcon: FaIcon(FontAwesomeIcons.eye), password: true,),
                ),
                SizedBox(
                  height: separatorHeight,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BtnCardLarge(
                      function: () {
                        debugPrint("Continue");
                      },
                      label: "Continue",
                      color: accentColor,
                      fontColor: Colors.white),
                ),
                SizedBox(
                  height: separatorHeight + 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                    onPressed: () {
                      debugPrint("Forgot password");
                    },
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(color: accentColor),
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
