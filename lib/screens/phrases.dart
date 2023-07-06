import 'package:flutter/material.dart';
import 'package:tokuapp/compontents/item.dart';
import 'package:tokuapp/model/number.dart';
import 'package:tokuapp/model/phrases.dart';

class phrases extends StatelessWidget {
  const phrases({super.key});
  final List<phrases_model> phrases_list = const [
    phrases_model(
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      jptext: 'Kimasu ka?',
      entext: 'Are you coming?',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jptext: 'Kōdoku suru koto o wasurenaide kudasai?',
      entext: 'Dont forget to subscribe?',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wavv',
      jptext: 'Go kibun wa ikagadesu ka?',
      entext: 'How are you feeling?',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jptext: 'Watashi wa anime ga daisukidesu',
      entext: 'I love anime',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jptext: 'Puroguramingu ga daisuki',
      entext: 'I love programming',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jptext: 'Puroguramingu wa kantan',
      entext: 'Programming is easy',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jptext: 'Namae wa nani?',
      entext: 'What is your name?',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
      jptext: 'Doko ni iku no?',
      entext: 'Where are you going?',
    ),
    phrases_model(
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
      jptext: 'yes I am coming',
      entext: 'yes I am coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases_list.length,
        itemBuilder: (context, index) {
          return phrasesitem(phrases_: phrases_list[index]);
        },
      ),
    );
  }
}

List<Widget> getlist(List<phrases_model> phrases_list) {
  List<Widget> getitem = [];
  for (var i = 0; i < phrases_list.length; i++) {
    getitem.add(phrasesitem(phrases_: phrases_list[i]));
  }
  return getitem;
}
