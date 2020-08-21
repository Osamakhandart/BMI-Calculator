import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function onpressed;
  String text;
  Button({@required this.onpressed, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 11,
      borderRadius: BorderRadius.circular(20),
      color: Colors.orange,
      shadowColor: Colors.deepOrange,
      child: MaterialButton(
        onPressed: onpressed,
        height: 50,
        minWidth: 370,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
