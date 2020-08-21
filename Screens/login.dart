import 'package:flutter/material.dart';
import 'package:fitnessapp/components/button.dart';
import 'package:fitnessapp/components/Textfeild.dart';
import 'package:fitnessapp/components/appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitnessapp/components/Icons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final auth = FirebaseAuth.instance;
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Appbarown(
          text: 'Login',
          Icon: icon(),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 28),
              Textfeildown(
                hinttext: 'Email',
                onchange: (value) {
                  username = value;
                },
                icons: Icon(
                  Icons.account_box,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Textfeildown(
                hinttext: 'password',
                onchange: (value) {
                  password = value;
                },
                staric: true,
                icons: Icon(
                  Icons.lock,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Button(
                  onpressed: () async {
                    try {
                      var user = await auth.signInWithEmailAndPassword(
                          email: username, password: password);
                      if (user != null) {
                        Navigator.pushNamed(context, 'home');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  text: 'login'),
            ],
          ),
        ),
      ]),
    );
  }
}
