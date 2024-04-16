
import 'package:chatapp/constants/app_color.dart';
import 'package:flutter/material.dart';

import '../constants/text_helper.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const SettingItem({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: ColorsForApp.applightcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: ListTile(
            leading: Icon(
              icon,
              color: ColorsForApp.appdarkcolor,
            ),
            title: Text(
              title,
              style: TextHelper.h6.copyWith(
                color: ColorsForApp.appdarkcolor,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: ColorsForApp.appdarkcolor,
            ),
            onTap: () {
              // Add your onTap logic here
            },
          ),
        ),
      ),
    );
  }
}
