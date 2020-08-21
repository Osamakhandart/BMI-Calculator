import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onpressed.dart';

class Bottomnev extends StatefulWidget {
  final List<baritems> baritem;
  final Duration AnimationDuratiom;
  final Function ontap;

  Bottomnev({this.baritem, this.AnimationDuratiom, this.ontap});

  @override
  _BottomnevState createState() => _BottomnevState();
}

int barindex;

class _BottomnevState extends State<Bottomnev> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        color: Colors.white,
        elevation: 10,
        child: Container(
          height: 55,
          child: Padding(
            padding: EdgeInsets.fromLTRB(5, 4, 12, 8),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: rowitems()),
          ),
        ));
  }

  List<Widget> rowitems() {
    List<Widget> _baritems = List();
    for (int i = 0; i < widget.baritem.length; i++) {
      baritems items = widget.baritem[i];
      bool isselected = barindex == i;
      _baritems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            barindex = i;
            widget.ontap(i);
          });
        },
        child: AnimatedContainer(
          margin: EdgeInsets.all(0),
          height: 40,
          padding: EdgeInsets.all(7),
          duration: widget.AnimationDuratiom,
          decoration: BoxDecoration(
              color: isselected ? Colors.orange : Colors.transparent,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: <Widget>[
              Icon(
                items.iconData,
                size: 32,
                color: isselected ? Colors.black : Colors.orange,
              ),
              AnimatedSize(
                vsync: this,
                duration: widget.AnimationDuratiom,
                curve: Curves.easeInOut,
                child: Text(isselected ? items.text : '',
                    style: TextStyle(
                      color: isselected ? items.color : Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontFamily: ('RobotoMono'),
                    )),
              )
            ],
          ),
        ),
      ));
    }
    return _baritems;
  }

  Dispose<Bottomnev>(Builder(context)) {
    if (barindex != null) {
      rowitems();
    }
  }
}

class baritems {
  IconData iconData;
  String text;
  Color color;
  baritems({this.iconData, this.text, this.color});
}
