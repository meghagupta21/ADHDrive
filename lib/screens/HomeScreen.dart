import 'package:chatapp/constants/app_color.dart';
import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/widgets/CircularContainer.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsForApp.applightcolor,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Stelle deine Frage!',
            style: TextHelper.h1.copyWith(fontWeight: FontWeight.bold,),
          ),
          SizedBox(height: 60),
          Positioned(
            top: 50,
            right: 30,
            child: CircularContainer(text1: 'Hallo',
              text2: 'Hier zum Chat',
              color:ColorsForApp.appdarkcolor.withOpacity(0.37),),
          ),
          SizedBox(height: 20),
          Positioned(
            top: 50,
            left: 100,
            child:   CircularContainer(
              text1: 'Deine',
              text2: 'Vergangenen Fragen',
              color: ColorsForApp.appdarkcolor.withOpacity(0.37),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
