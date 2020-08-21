import 'package:flutter/material.dart';
import 'package:fitnessapp/components/button.dart';
import 'package:fitnessapp/Screens/login.dart';

class Fisrtscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(
                  onpressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  text: 'login'),
              SizedBox(
                height: 30,
              ),
              Button(
                  onpressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  text: 'Signup')
            ],
          ),
        ));
  }
}
