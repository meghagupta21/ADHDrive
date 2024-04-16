import 'dart:convert';


import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/widgets/ActionButton.dart';
import 'package:chatapp/widgets/LogoWidget.dart';
import 'package:chatapp/widgets/custom-textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/app_color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passwordObsecured = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController nachnamecontroller = TextEditingController();

  TextEditingController vornamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController BesttigenController = TextEditingController();


  //final channel = WebSocketChannel.connect(Uri.parse('ws://localhost:3307'));
  String errorMessage = '';


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsForApp.applightcolor,

     appBar: AppBar(title: Text(''),backgroundColor: ColorsForApp.applightcolor,),
      body: Center(
        child: SafeArea(
          child: Stack(children: [
            SingleChildScrollView(
              child: Container(
                width: screenWidth,
                margin: const EdgeInsets.only(bottom: 100),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LogoWidget(width: 100, height: 100, imagePath:'assets/logo.png'),
                        Center(
                          child: Text(
                            'Account erstellen',
                            style: TextHelper.h1.copyWith(fontWeight: FontWeight.bold,color:ColorsForApp.blackColor),
                          ),
                        ),


                        const SizedBox(height: 20),

                        // username textfield
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [


                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Nachname',
                                            style: TextHelper.h3.copyWith(fontWeight: FontWeight.normal, color: ColorsForApp.blackColor),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),

                                        CustomTextField(
                                          width: 175,
                                          controller: nachnamecontroller,
                                          hintText: "Nachname",
                                          prefixIcon: Icon(Icons.person),
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade100,
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: ColorsForApp.greyColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20), // Add some space between the text fields
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Vorname',
                                            style: TextHelper.h3.copyWith(fontWeight: FontWeight.normal, color: Colors.black),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        CustomTextField(
                                          width: 175,
                                          // Second CustomTextField
                                          controller: vornamecontroller,
                                          hintText: "Vorname",
                                          prefixIcon: Icon(Icons.lock),
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade100,
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //
                              //

                            ],
                          ),
                        ),
                        SizedBox(width: 8), // Add some space between the image and the text
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start, // Aligns the "Username" and "Password" text to the left
                            children: [

                              SizedBox(width: 8),
                              Text(
                                'Email',
                                style: TextHelper.h3.copyWith(fontWeight: FontWeight.normal,color:Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: CustomTextField(
                            controller: emailcontroller,
                            hintText: "Email",
                            prefixIcon: Icon(Icons.person),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,

                                ),
                              ),
                            ),
                          ),
                        ),
                        //

                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start, // Aligns the "Username" and "Password" text to the left
                            children: [

                              SizedBox(width: 8),
                              Text(
                                'Passwort',
                                style: TextHelper.h3.copyWith(fontWeight: FontWeight.normal,color:Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),   // password textfield
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: CustomTextField(
                            obscureText: passwordObsecured,
                            controller: passwordController,
                            hintText: "Passwort",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordObsecured = !passwordObsecured;
                                });
                              },
                              icon: Icon(
                                passwordObsecured ? Icons.visibility_off : Icons.visibility,
                              ),
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,

                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start, // Aligns the "Username" and "Password" text to the left
                            children: [

                              SizedBox(width: 8),
                              Text(
                                'Bestätigen',
                                style: TextHelper.h3.copyWith(fontWeight: FontWeight.normal,color:Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),   // password textfield
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: CustomTextField(
                            obscureText: passwordObsecured,
                            controller:BesttigenController,
                            hintText: "Bestätigen",

                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,

                                ),
                              ),
                            ),
                          ),
                        ),
                        //


                        //
                        const SizedBox(height: 20),

                        // sign in button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child:ActionButtonWidget(
                            height: 50,
                            width: 500,
                            text: 'Register',
                            color: ColorsForApp.appdarkcolor,
                            onPressed: () {
                              Navigator.pushNamed(context, 'home');
                              // Your action here
                            }, textStyle: TextHelper.h6.copyWith(color: Colors.white), borderRadius: 10,
                          ),
                        ),
                        const SizedBox(height: 20),

                      ],
                    ),
                  ),
                ),
              ),
            ),

          ]),
        ),
      ),
    );
  }
}