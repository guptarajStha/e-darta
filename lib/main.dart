import 'package:e_darta/pages/help.dart';
import 'package:e_darta/pages/login.dart';
import 'package:e_darta/pages/login1.dart';
import 'package:e_darta/pages/menu.dart';
import 'package:e_darta/pages/process.dart';
import 'package:e_darta/pages/register.dart';
import 'package:e_darta/pages/signup.dart';
import 'package:e_darta/pages/welcome.dart';
import 'package:e_darta/test/logintest.dart';
import 'package:e_darta/test/signuptest.dart';
import 'package:e_darta/util/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: StreamBuilder<User?>(
      //     stream: FirebaseAuth.instance.authStateChanges(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return const MainMenu();
      //       } else {
      //         return const WelcomePage();
      //       }
      //     }),
      // initialRoute: MyRoutes.process,
      routes: {
        "/": (context) => WelcomePage(),
        // MyRoutes.loginRoute: (context) => SignPage(),
        MyRoutes.loginRoute: (context) => signuptest(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        // MyRoutes.loginRoute: (context) => StreamBuilder<User?>(
        //     stream: FirebaseAuth.instance.authStateChanges(),
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         return const MainMenu();
        //       } else {
        //         return const LoginPage();

        //       }
        //     }),
        MyRoutes.helpRoute: (context) => NeedHelp(),
        MyRoutes.signUpRoute: (context) => SignUp(),
        MyRoutes.mainMenu: (context) => MainMenu(),
        // MyRoutes.register: (context) => Register(),
        MyRoutes.process: (context) => Process(),
      },
    );
  }
}
