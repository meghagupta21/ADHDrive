
import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/widgets/ActionButton.dart';
import 'package:chatapp/widgets/LogoWidget.dart';
import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsForApp.applightcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogoWidget(width: 200, height: 200, imagePath: 'assets/logo.png',),
            SizedBox(height: 20.0),
            Text(
              'Willkommen bei ADHDrive',
              style: TextHelper.h2.copyWith(color: ColorsForApp.appdarkcolor,fontWeight: FontWeight.bold)
            ),
            Text(
              'Die App, bei der es um dich geht',
              style: TextHelper.h3.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100.0),
            ActionButtonWidget(
              height: 50,
              width: 350,
              text: 'Los geht\'s',
              color:ColorsForApp.appdarkcolor,
              onPressed: () {

              Navigator.pushNamed(context, 'splash2');

              // Your action here
              }, textStyle: TextHelper.h6.copyWith(color: Colors.white), borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}