
import 'package:chatapp/main.dart';
import 'package:chatapp/screens/ChatScreen.dart';
import 'package:chatapp/screens/HomeScreen.dart';
import 'package:chatapp/screens/Login.dart';
import 'package:chatapp/screens/NavigationScreen.dart';
import 'package:chatapp/screens/ProfileScreen.dart';
import 'package:chatapp/screens/Register.dart';
import 'package:chatapp/screens/SettingScreen.dart';
import 'package:chatapp/screens/Splash.dart';
import 'package:chatapp/screens/Splash2.dart';
import 'package:flutter/material.dart';



class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case 'splash1':
        return MaterialPageRoute(
          builder: (_) => MySplashScreen(),
        );

      //
      case 'splash2':
        return MaterialPageRoute(
          builder: (_) => MySecondScreen(),
        );



      case 'login':
        return MaterialPageRoute(
          builder: (_)=> LoginScreen(),

        );
      case 'register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case 'chat':
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case 'settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case 'bottomnav':
        return MaterialPageRoute(builder: (_) => BottomNavigation());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      default:
        return MaterialPageRoute(builder: (_) => MyApp());
    }
  }
}
