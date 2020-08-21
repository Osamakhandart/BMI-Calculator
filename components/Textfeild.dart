import 'package:flutter/material.dart';

class Textfeildown extends StatelessWidget {
  String hinttext;
  Function onchange;
  bool staric;
  Icon icons;
  Textfeildown(
      {@required this.hinttext,
      this.onchange,
      this.staric = false,
      this.icons});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: staric,
      onChanged: onchange,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          hintText: hinttext,
          hintStyle: TextStyle(
            color: Color(0xFF898886),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          suffixIcon: icons),
      style: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontFamily: ('RobotoMono'),
      ),
      cursorColor: Colors.black,
      cursorWidth: 5,
    );
  }
}
