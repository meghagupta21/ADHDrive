import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/screens/ChatScreen.dart';

import 'package:chatapp/screens/HomeScreen.dart';
import 'package:chatapp/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';

import '../constants/app_color.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    ChatScreen(),
    ProfileScreen(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsForApp.applightcolor,
      appBar: AppBar(
        backgroundColor: ColorsForApp.applightcolor,
        title: Text('ADHDrive',style: TextHelper.h7.copyWith(fontWeight: FontWeight.bold,color: ColorsForApp.appdarkcolor),),
        actions: [
          IconButton(
            icon: Icon(Icons.settings,color: ColorsForApp.appdarkcolor,),
            onPressed: () {
              Navigator.pushNamed(context, 'settings');
              // Add your settings action here
            },
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
