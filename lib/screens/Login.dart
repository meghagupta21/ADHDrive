import 'dart:convert';


import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/widgets/ActionButton.dart';
import 'package:chatapp/widgets/LogoWidget.dart';
import 'package:chatapp/widgets/custom-textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  bool passwordObsecured = true;
  TextEditingController passwordController = TextEditingController();

  TextEditingController userEmailController = TextEditingController();
  //final channel = WebSocketChannel.connect(Uri.parse('ws://localhost:3307'));
  String errorMessage = '';


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:ColorsForApp.applightcolor,
      resizeToAvoidBottomInset:
      false, // Set to false to prevent resizing when keyboard appears

      body: SafeArea(
        child: Stack(children: [
          Container(
            margin: const EdgeInsets.only(bottom: 100),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoWidget(width: 100, height: 100, imagePath:'assets/logo.png'),
                    Center(
                      child: Text(
                        'Login bei ADHDrive',
                        style: TextHelper.h2.copyWith(fontWeight: FontWeight.bold,color:Colors.black),
                      ),
                    ),


                    const SizedBox(height: 20),

                    // username textfield
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Image.asset(
                          //   'assets/images/your_image.png',
                          //   width: 24, // Adjust the width as needed
                          //   height: 24, // Adjust the height as needed
                          //   // You can also use other properties of Image.asset to customize the image
                          // ),
                          Icon(Icons.person_2_outlined),
                          SizedBox(width: 8), // Add some space between the image and the text
                          Text(
                            'Username',
                            style: TextHelper.h3.copyWith(fontWeight: FontWeight.normal, color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: CustomTextField(
                        controller: userEmailController,
                        hintText: "Useremail",
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
                          Icon(Icons.lock_person_outlined),
                          SizedBox(width: 8),
                          Text(
                            'Password',
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
                        hintText: "Password",
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

                    //

                    //         // forgot password?
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            'Passwort vergessen',
                            style: TextHelper.h7.copyWith(fontWeight: FontWeight.bold,color:ColorsForApp.appdarkcolor),
                          )
                          ),
                        ],
                      ),
                    ),


                    //
                    const SizedBox(height: 20),

                    // sign in button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child:ActionButtonWidget(
                        height: 50,
                        width: 500,
                        text: 'Login',
                        color: ColorsForApp.appdarkcolor,
                        onPressed: () {
                          Navigator.pushNamed(context, 'bottomnav');
                          // Your action here
                        }, textStyle: TextHelper.h6.copyWith(color: Colors.white), borderRadius: 10,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: ColorsForApp.greyColor,
                            height: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "oder",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    LogoWidget(width: 50, height: 50, imagePath:'assets/google.png'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Du hast noch keinen Account? ',
                       style:TextHelper.h8,
                        ),
                        GestureDetector(
                          onTap: () {
                           Navigator.pushNamed(context, 'register');
                          },
                          child: Text(
                            'Jetzt erstellen',
                          style:TextHelper.h8.copyWith(color:ColorsForApp.appdarkcolor),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),

        ]),
      ),
    );
  }
}