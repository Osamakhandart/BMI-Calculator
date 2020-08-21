import 'package:flutter/material.dart';
import 'package:fitnessapp/components/button.dart';
import 'package:fitnessapp/components/Textfeild.dart';
import 'package:fitnessapp/components/appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnessapp/components/Icons.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final auth = FirebaseAuth.instance;
  String email;
  String pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Appbarown(
          text: 'Signup',
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
                  email = value;
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
                  pass = value;
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
                      var user = await auth.createUserWithEmailAndPassword(
                          email: email, password: pass);
                      if (user != null) {
                        Navigator.pushNamed(context, 'home');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  text: 'Signup'),
            ],
          ),
        ),
      ]),
    );
  }
}
