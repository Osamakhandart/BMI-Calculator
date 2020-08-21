import 'package:flutter/material.dart';
import 'package:fitnessapp/components/appbar.dart';
import 'package:fitnessapp/components/button.dart';
import 'package:fitnessapp/components/drawer.dart';
import 'stretch.dart';
import 'package:fitnessapp/components/onpressed.dart';
import 'package:provider/provider.dart';

int indexvar;

class Home extends StatefulWidget {
  List<baritems> Baritems = [
    baritems(iconData: Icons.search, text: 'search', color: Colors.white),
    baritems(
        iconData: Icons.accessibility, text: 'Stretching', color: Colors.white),
    baritems(
        iconData: Icons.directions_run, text: 'Stemina', color: Colors.white),
    baritems(iconData: Icons.account_box, text: 'profile', color: Colors.white),
  ];
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: indexvar == 0
          ? Color(0xFFFCF3C5)
          : indexvar == 1
              ? Color(0xFFFCD1AD)
              : indexvar == 2 ? Color(0xFFE8F9F9) : Color(0xFFF1D7F0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: Bottomnev(
        baritem: widget.Baritems,
        AnimationDuratiom: const Duration(milliseconds: 200),
        ontap: (index) {
          setState(() {});
          indexvar = (index);
          Provider.of<onpress>(context, listen: false).onpressed(index);
        },
      ),
      drawer: Drawer(
        elevation: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 45, right: 55, left: 55, bottom: 35),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60))),
              height: 200,
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 45,
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/stretching-exercises.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Button(onpressed: () {}, text: 'contact us'),
            SizedBox(
              height: 20,
            ),
            Button(onpressed: () {}, text: 'Help'),
            SizedBox(
              height: 20,
            ),
            Button(onpressed: () {}, text: 'Logout'),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Appbarown(
            text: 'Home',
            Height: 190,
          ),
          Container(
            color: Colors.white,
            height: 380,
            child: Provider.of<onpress>(context, listen: true).widgetreturn(),
          )
        ],
      ),
    );
  }
}
