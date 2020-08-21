import 'package:flutter/material.dart';
class icon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 40,
        ),
        onPressed: (){Navigator.pushNamed(context, 'first');});
  }
}
