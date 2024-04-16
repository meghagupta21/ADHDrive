import 'package:chatapp/constants/app_color.dart';
import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/widgets/ActionButton.dart';
import 'package:chatapp/widgets/LogoWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class MySecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorsForApp.applightcolor,
     appBar: AppBar(title: Text(''),backgroundColor: ColorsForApp.applightcolor,),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //LogoWidget(),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Dein ADHS-Archiv',
                  style: TextHelper.h6.copyWith(fontWeight: FontWeight.bold,color:ColorsForApp.blackColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10.0),
              Center(child: LogoWidget(width:300, height:300, imagePath:'assets/logobubble.png')),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Willkommen zur umfassenden ADHD-Datenbank! Beantworte jede deiner Fragen in wenigen Sekunden!',
                  style: TextHelper.h7.copyWith(fontWeight: FontWeight.bold,color: ColorsForApp.blackColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 100.0),
              ActionButtonWidget(
                height: 50,
                width: 350,
                text: 'Weiter',
                color: ColorsForApp.appdarkcolor,
                onPressed: () {
                  // Your action here
                  Navigator.pushNamed(context, 'login');
                }, textStyle: TextHelper.h6.copyWith(color: ColorsForApp.whiteColor), borderRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
