import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:provider/provider.dart';
import 'package:fitnessapp/Screens/home.dart';
import 'drawer.dart';
import 'package:fitnessapp/components/Textfeild.dart';

class onpress extends ChangeNotifier {
  int valuee;
  void onpressed(value) {
    this.valuee = value;
    notifyListeners();
  }

  Widget widgetreturn() {
    if (valuee == 0) {
      return Container(
        color: Color(
          0xFFFCF3C5,
        ),
        child: Column(children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Textfeildown(
              hinttext: 'tips',
              onchange: (value) {
                print(value);
              },
              icons: Icon(
                Icons.search,
              ))
        ]),
      );
    } else if (valuee == 1) {
      return Container(
        decoration: BoxDecoration(color: Color(0xFFFCD1AD)),
      );
    } else if (valuee == 2) {
      return Container(
        color: Color(0xFFE8F9F9),
      );
    } else if (valuee == 3) {
      return Container(
        color: Color(0xFFF1D7F0),
      );
    }
  }
}
