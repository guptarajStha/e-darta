import 'package:e_darta/util/routes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/signup.jpg"), fit: BoxFit.cover),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.6,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  // fillColor: HexColor("#f9e9e8"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(42),
                  ),
                  hintText: "Email",
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value.trim();
                    //value.trim();
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "";
                  } else
                    return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (email) =>
                //     email != null && EmailValidator.validate(email)
                //         ? 'Enter a valid email'
                //         : null,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: TextFormField(
                // keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (value) => value != null && value.length < 6
                //     ? 'Enter min 6 character'
                //     : null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  // fillColor: HexColor("#f9e9e8"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      // color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Password",
                  icon: Icon(
                    Icons.key,
                    color: Colors.white,
                  ),
                ),
                // decoration: InputDecoration(
                //   hintText: "Password",
                //   icon: Icon(
                //     Icons.key,
                //     color: HexColor("ed8a76"),
                //   ),
                // ),
                onChanged: (value) {
                  setState(() {
                    password = value.trim();
                    // value.trim();
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "";
                  } else
                    return null;
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.1,
            ),
            Column(
              children: [
                CupertinoButton(
                  child: Text("Sign Up"),
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("ed8a76"),
                  onPressed: () => moveToHome(context),
                  // async {
                  //   try {
                  //     final newUser =
                  //         await _auth.createUserWithEmailAndPassword(
                  //       email: email,
                  //       password: password,
                  //     );
                  //     if (newUser != null) {
                  //       Navigator.pushNamed(context, MyRoutes.mainMenu);
                  //     }
                  //   } catch (e) {
                  //     print(e);
                  //   }
                  // } => moveToLogIn(context),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // auth.signInWithEmailAndPassword(email: _email, password: _password);
      setState(() {});
      Navigator.pushNamed(context, MyRoutes.mainMenu);
    }
  }

  // moveToLogIn(BuildContext context) {
  //   Navigator.pushNamed(context, MyRoutes.mainMenu);
  // }
}
