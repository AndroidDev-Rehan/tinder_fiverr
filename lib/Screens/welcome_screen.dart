import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tinder/Screens/AuthScreens/login_screen.dart';
import 'package:tinder/Screens/AuthScreens/signup_screen.dart';
import 'package:tinder/constant.dart';
import 'package:tinder/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = 'welcome';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('assets/logo/the_net.png'),
            ),
            const Text.rich(TextSpan(
                text: 'Welcome to ',
                style: TextStyle(fontSize: 25, color: Colors.white),
                children: <InlineSpan>[
                  TextSpan(
                    text: 'The Net',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ])),
            const Image(
              image: AssetImage('assets/images/welcome.PNG'),
            ),
            const Text(
              'Connect with fellow enterpreneures, make friends and work together!',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  buttonName: 'Log In',
                  color: Colors.transparent,
                  textColor: kSecondaryColor,
                  function: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                CustomButton(
                  buttonName: 'Get Started',
                  function: () {
                    Navigator.pushNamed(context, SignpScreen.id);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
