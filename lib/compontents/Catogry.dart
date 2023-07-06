import 'package:flutter/material.dart';
import 'package:tokuapp/screens/Numbers.dart';

class Catogry extends StatelessWidget {
  Catogry({this.text, this.color, this.OnTapp});
  Color? color;
  String? text;
  Function()? OnTapp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapp,
      child: Container(
        padding: EdgeInsets.only(left: 19),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        color: color,
      ),
    );
  }
}
