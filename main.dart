import 'package:flutter/material.dart';
import 'package:fitnessapp/Screens/home.dart';
import 'package:fitnessapp/Screens/login.dart';
import 'package:fitnessapp/Screens/signup.dart';
import 'package:fitnessapp/Screens/firstscreen.dart';
import 'package:fitnessapp/Screens/stretch.dart';
import 'package:provider/provider.dart';
import 'package:fitnessapp/components/onpressed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<onpress>(
        create: (context) => onpress(),
        child: MaterialApp(
          initialRoute: 'login',
          routes: {
            'login': (context) => Login(),
            'signup': (context) => Signup(),
            'home': (context) => Home(),
            'first': (context) => Fisrtscreen(),
            'stretch': (context) => Stretch(),
          },
        ));
  }
}
