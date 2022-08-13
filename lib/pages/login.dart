import 'package:e_darta/util/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SiginPageState();
}

class _SiginPageState extends State<SignPage> {
  String _email = "";
  String _password = "";
  // final auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: HexColor("ed8a76"),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 150.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: HexColor("#db615e"),
                        borderRadius: BorderRadius.circular(60)),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: HexColor("ed8a76"),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          child: Center(
                            child: Text(
                              "Login",
                              textScaleFactor: 2,
                              style: TextStyle(
                                color: HexColor("#f9e9e8"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   margin: EdgeInsets.all(20),
                        //   padding: EdgeInsets.all(12),
                        //   height: 60,
                        //   width: 300,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //     color: HexColor("#f9e9e8"),
                        //   ),
                        //   child:
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              // fillColor: HexColor("#f9e9e8"),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
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
                                _email = value.trim();
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
                          height: 10,
                        ),
                        // Container(
                        //   margin: EdgeInsets.all(20),
                        //   padding: EdgeInsets.all(12),
                        //   height: 45,
                        //   width: 300,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //     color: HexColor("#f9e9e8"),
                        //   ),
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              // fillColor: HexColor("#f9e9e8"),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0,
                                  // color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(42),
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
                                _password = value.trim();
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
                          height: 15,
                        ),
                        InkWell(
                          child: Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: HexColor("#f9e9e8"),
                            ),
                            child: Center(child: Text("Login")),
                          ),
                          onTap: () => moveToHome(context),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          child: Text(
                            "Forget Password?",
                            textScaleFactor: 1.2,
                            style: TextStyle(
                              color: HexColor("#f9e9e8"),
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // auth.signInWithEmailAndPassword(email: _email, password: _password);
      setState(() {});
      Navigator.pushNamed(context, MyRoutes.mainMenu);
    }
  }
}
