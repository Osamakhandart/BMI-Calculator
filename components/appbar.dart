import 'package:flutter/material.dart';

class Appbarown extends StatelessWidget {
  double Height;
  Widget Icon;
  String text;

  Appbarown({
    @required this.text,
    this.Height = 300,
    this.Icon,
  });
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: Height,
        width: 420,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
        child: SafeArea(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(child: Icon),
                Flexible(
                    child: Container(
                  height: 20,
                  width: 200,
                )),
                Column(children: <Widget>[
                  Flexible(
                      child: Container(
                    height: 300,
                    width: 100,
                  )),
                  Container(
                    height: 90,
                    width: 210,
                    padding: EdgeInsets.only(left: 30, right: 10),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.orange,
                      elevation: 50,
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Aladin'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ]),
              ]),
        ),
      ),
    );
  }
}
