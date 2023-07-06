import 'package:flutter/material.dart';
import 'package:tokuapp/compontents/item.dart';
import 'package:tokuapp/model/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Number> NUmbers_list = const [
    Number(
        sound: 'assets/sounds/numbers/number_one_sound.mp3',
        img: 'assets/images/numbers/number_one.png',
        jptext: 'ichi',
        entext: 'One'),
    Number(
        sound: 'assets/sounds/numbers/number_two_sound.mp3',
        img: 'assets/images/numbers/number_two.png',
        jptext: 'Ni',
        entext: 'Two'),
    Number(
        sound: 'assets/sounds/numbers/number_three_sound.mp3',
        img: 'assets/images/numbers/number_three.png',
        jptext: 'San',
        entext: 'Three'),
    Number(
        sound: 'assets/sounds/numbers/number_four_sound.mp3',
        img: 'assets/images/numbers/number_four.png',
        jptext: 'Shi',
        entext: 'Four'),
    Number(
        sound: 'assets/sounds/numbers/number_five_sound.mp3',
        img: 'assets/images/numbers/number_five.png',
        jptext: 'Go',
        entext: 'Five'),
    Number(
        sound: 'assets/sounds/numbers/number_six_sound.mp3',
        img: 'assets/images/numbers/number_six.png',
        jptext: 'Roku',
        entext: 'Six'),
    Number(
        sound: 'assets/sounds/numbers/number_seven_sound.mp3',
        img: 'assets/images/numbers/number_seven.png',
        jptext: 'Sebun',
        entext: 'Seven'),
    Number(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        img: 'assets/images/numbers/number_eight.png',
        jptext: 'Hachi',
        entext: 'Eight'),
    Number(
        sound: 'assets/sounds/numbers/number_nine_sound.mp3',
        img: 'assets/images/numbers/number_nine.png',
        jptext: 'Kyū',
        entext: 'Nine'),
    Number(
        sound: 'assets/sounds/numbers/number_ten_sound.mp3',
        img: 'assets/images/numbers/number_ten.png',
        jptext: 'Jū',
        entext: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: NUmbers_list.length,
        itemBuilder: (context, index) {
          return item(number: NUmbers_list[index]);
        },
      ),
    );
  }

  List<Widget> getlist(List<Number> NUmbers_list) {
    List<Widget> getitem = [];
    for (var i = 0; i < NUmbers_list.length; i++) {
      getitem.add(item(number: NUmbers_list[i]));
    }
    return getitem;
  }
}
