import 'package:e_darta/pages/login1.dart';
import 'package:e_darta/util/colors.dart';
import 'package:e_darta/util/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'menu.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: HexColor("#db615e"),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            height: 400,
            child: Center(
              child: Image.asset(
                "assets/images/w.png",
                scale: 1,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CupertinoButton(
                child: Text("Log In"),
                borderRadius: BorderRadius.circular(12),
                color: HexColor("ed8a76"),
                onPressed: () => moveToLogIn(context),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CupertinoButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.black),
                ),
                borderRadius: BorderRadius.circular(12),
                color: HexColor("#f9e9e8"),
                onPressed: () => moveToSignUp(context),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CupertinoButton(
                child: Text(
                  "Need Help?",
                  textScaleFactor: 0.9,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () => moveToHelp(context),
              )
            ],
          )
        ],
      ),
    );
  }

  moveToHelp(BuildContext context) {
    setState(() {});

    Navigator.pushNamed(context, MyRoutes.helpRoute);
  }

  moveToLogIn(BuildContext context) {
    setState(() {
      Navigator.pushNamed(context, MyRoutes.loginRoute);
      // StreamBuilder<User?>(
      //     stream: FirebaseAuth.instance.authStateChanges(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return const MainMenu();
      //       } else {
      //         return const LoginPage();
      //       }
      //     });
    });
  }

  moveToSignUp(BuildContext context) {
    setState(() {
      Navigator.pushNamed(context, MyRoutes.signUpRoute);
    });
  }
}
