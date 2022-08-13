import 'dart:io';

import 'package:e_darta/util/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class Process extends StatefulWidget {
  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  // File? image;
  // Future pickImage() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.camera);
  //     if (image == null) return;
  //     final imageTemporary = File(image.path);
  //     setState(() {
  //       this.image = imageTemporary;
  //     });
  //   } on PlatformException catch (e) {
  //     print('fail to pick image: $e');
  //   }
  // }

  int currentStep = 0;
  final firstName = TextEditingController();
  final middleName = TextEditingController();
  final lastName = TextEditingController();
  final emailAddress = TextEditingController();
  final phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Citizenship Registration"),
        backgroundColor: HexColor("#db615e"),
      ),
      body: Container(
        child: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
            primary: HexColor("#db615e"),
          )),
          child: Stepper(
            type: StepperType.horizontal,
            steps: getSteps(),
            currentStep: currentStep,
            onStepContinue: () {
              setState(() {
                final isLastStep = currentStep == getSteps().length - 1;
                if (isLastStep) {
                  Navigator.pushNamed(context, MyRoutes.mainMenu);
                }
                // else if (isLastStep) {
                //   print('Completed');
                // }
                else
                  currentStep += 1;
              });
            },
            onStepCancel: () {
              currentStep == 0
                  ? null
                  : setState(() {
                      currentStep -= 1;
                    });
            },
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: Text("Info"),
          content: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                controller: firstName,
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                controller: middleName,
                decoration: InputDecoration(
                  labelText: 'Middle Name',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                controller: lastName,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                controller: phoneNumber,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 1,
          title: Text("Document"),
          content: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // children: [
              //   Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(1),
              //       border: Border.all(color: Colors.black),
              //     ),
              //     width: 100,
              //     height: 100,
              //     // color: Colors.white,
              //     child: Icon(CupertinoIcons.photo),
              //   ),
              //   Text("Passport sized")
              // ],
              ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: Text("Payment"),
          content: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: HexColor("#db615e")),
                    width: 250,
                    height: 50,
                    // color: HexColor("#db615e"),
                    child: Center(
                      child: Text(
                        "Click Here For Payment",
                        textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        Step(
          isActive: currentStep >= 3,
          title: Text("Complete"),
          content: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 320,

                    // color: HexColor("#db615e"),
                    decoration: BoxDecoration(
                      color: HexColor("#f9e9e8"),
                    ),

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Congratulation, Your Form has been successfully filled and Check your email adddress for Confirmation",
                          textScaleFactor: 1.3,
                          style: TextStyle(color: HexColor("#db615e")),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Click continue to return to MainMenu"),
              ],
            ),
          ),
        ),
      ];
}

Widget buildButton({
  required String title,
  required VoidCallback onClicked,
}) =>
    ElevatedButton(
        onPressed: onClicked,
        child: Row(
          children: [
            Text(title),
          ],
        ));
