import 'package:chatapp/constants/text_helper.dart';
import 'package:flutter/material.dart';

import '../constants/app_color.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> titles = [
    'Handling Stress',
    'Dealing with love',
    'Anxiety',
    'Diabetes Nutrition',
    'Loss of Appetite',
  ];
  final List<String> icons = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/1.png',
    'assets/2.png',
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorsForApp.applightcolor,
      body: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorsForApp.appdarkcolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Meine Fragen',
                    style: TextHelper.h1.copyWith(color: ColorsForApp.whiteColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: Text(
                      '5 von 15 Kostenlosenlosen Fragen gestellt',
                      style: TextHelper.size17.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),

                    ),
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image.asset(icons[index]),

                        ),
                        title: Text(
                          titles[index],
                            style: TextHelper.h7.copyWith(fontWeight: FontWeight.bold,),
                        ),
                        subtitle: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.messenger_outline, color: Colors.black),
                            Icon(Icons.delete_outline_outlined, color: Colors.black),
                            SizedBox(width: 4),

                          ],
                        ),
                        trailing: Icon(
                          Icons.more_horiz,

                        ),
                        onTap: () {
                          // Add your onTap logic here
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),


    );
  }
}
