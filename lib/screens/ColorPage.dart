import 'package:flutter/material.dart';
import 'package:tokuapp/compontents/item.dart';
import 'package:tokuapp/model/Color.dart';

class Color_page extends StatelessWidget {
  const Color_page({super.key});
  final List<Color_model> Color_list = const [
    Color_model(
        sound: 'assets/sounds/colors/black.wav',
        img: 'assets/images/colors/color_black.png',
        jptext: 'Kuro',
        entext: 'Black'),
    Color_model(
        sound: 'assets/sounds/colors/brown.wav',
        img: 'assets/images/colors/color_brown.png',
        jptext: 'Chairo',
        entext: 'Brown'),
    Color_model(
        sound: 'assets/sounds/colors/dusty yellow.wav',
        img: 'assets/images/colors/color_dusty_yellow.png',
        jptext: 'Dasutiiero',
        entext: 'Dusty Yellow'),
    Color_model(
        sound: 'assets/sounds/colors/green.wav',
        img: 'assets/images/colors/color_green.png',
        jptext: 'Midori',
        entext: 'Green'),
    Color_model(
        sound: 'assets/sounds/colors/gray.wav',
        img: 'assets/images/colors/color_gray.png',
        jptext: 'Gure',
        entext: 'Gray'),
    Color_model(
        sound: 'assets/sounds/colors/red.wav',
        img: 'assets/images/colors/color_red.png',
        jptext: 'Aka',
        entext: 'Red'),
    Color_model(
        sound: 'assets/sounds/colors/white.wav',
        img: 'assets/images/colors/color_white.png',
        jptext: 'Shiro',
        entext: 'White'),
    Color_model(
        sound: 'assets/sounds/colors/yellow.wav',
        img: 'assets/images/colors/yellow.png',
        jptext: 'Kiiro',
        entext: 'Yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Color_list.length,
        itemBuilder: (context, index) {
          return Coloritem(color_: Color_list[index]);
        },
      ),
    );
  }
}

List<Widget> getlist(List<Color_model> Color_list) {
  List<Widget> getitem = [];
  for (var i = 0; i < Color_list.length; i++) {
    getitem.add(Coloritem(color_: Color_list[i]));
  }
  return getitem;
}
