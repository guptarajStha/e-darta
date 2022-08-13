import 'package:e_darta/util/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final _auth = FirebaseAuth.instance;
  // void getCurrentUser() async{
  //   final user = await _auth.currentUser();
  //   if(currentUser!=null){

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/menu.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.5,
          ),
          InkWell(
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                  color: HexColor("#fae7e3"),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.white,
                  )),
              child: Center(
                child: Text(
                  "CITIZENSHIP",
                  textScaleFactor: 2,
                  style: TextStyle(
                    // color: HexColor("ed8a76"),
                    color: HexColor("#db615e"),
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.pushNamed(context, MyRoutes.process),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
                color: HexColor("#fae7e3"),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white,
                )),
            child: Center(
              child: Text(
                "BIRTH CERTIFICATE",
                textScaleFactor: 2,
                style: TextStyle(
                  // color: HexColor("ed8a76"),
                  color: HexColor("#db615e"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
                color: HexColor("#fae7e3"),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white,
                )),
            child: Center(
              child: Text(
                "DEATH CERTIFICATE",
                textScaleFactor: 2,
                style: TextStyle(
                  // color: HexColor("ed8a76"),
                  color: HexColor("#db615e"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
                color: HexColor("#fae7e3"),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white,
                )),
            child: Center(
              child: Text(
                "MARRAIGE REGISTRATION",
                textScaleFactor: 1.7,
                style: TextStyle(
                  // color: HexColor("ed8a76"),
                  color: HexColor("#db615e"),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
