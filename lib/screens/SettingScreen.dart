import 'package:flutter/material.dart';
import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/constants/app_color.dart';

import '../widgets/ListView.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsForApp.appdarkcolor,
      appBar: AppBar(
        backgroundColor: Color(0xff557C55),
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return SettingItem(
            title: titles[index],
            icon: icons[index],
          );
        },
      ),
    );
  }
}

final List<String> titles = [
  'App bewerten',
  'App teilen',
  'Privacy policy',
  'Terms & Conditions',
  'Support',
];
final List<IconData> icons = [
  Icons.star,
  Icons.share,
  Icons.privacy_tip,
  Icons.speaker_notes_rounded,
  Icons.headset_mic_rounded,
];
