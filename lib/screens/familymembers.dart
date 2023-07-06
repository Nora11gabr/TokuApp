import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tokuapp/compontents/item.dart';
import 'package:tokuapp/model/family.dart';

class familypage extends StatelessWidget {
  const familypage({Key? key}) : super(key: key);
  final List<family> Family_list = const [
    family(
        sound: 'assets/sounds/family_members/father.wav',
        img: 'assets/images/family_members/family_father.png',
        jptext: 'Otōsan',
        entext: 'Father'),
    family(
        sound: 'assets/sounds/family_members/daughter.wav',
        img: 'assets/images/family_members/family_daughter.png',
        jptext: 'Musume',
        entext: 'Daughter'),
    family(
        sound: 'assets/sounds/family_members/grand father.wav',
        img: 'assets/images/family_members/family_grandfather.png',
        jptext: 'Ojīsan',
        entext: 'Grandfather'),
    family(
        sound: 'assets/sounds/family_members/grand mother.wav',
        img: 'assets/images/family_members/family_grandmother.png',
        jptext: 'Sobo',
        entext: 'Grandmother'),
    family(
        sound: 'assets/sounds/family_members/mother.wav',
        img: 'assets/images/family_members/family_mother.png',
        jptext: 'Hahaoya',
        entext: 'Mother'),
    family(
        sound: 'assets/sounds/family_members/older bother.wav',
        img: 'assets/images/family_members/family_older_brother.png',
        jptext: 'Nīsan',
        entext: 'Older Bother'),
    family(
        sound: 'assets/sounds/family_members/older sister.wav',
        img: 'assets/images/family_members/family_older_sister.png',
        jptext: 'Onēsan',
        entext: 'Older Sister'),
    family(
        sound: 'assets/sounds/family_members/son.wav',
        img: 'assets/images/family_members/family_son.png',
        jptext: 'Musuko',
        entext: 'Son'),
    family(
        sound: 'assets/sounds/family_members/younger brohter.wav',
        img: 'assets/images/family_members/family_younger_brother.png',
        jptext: 'Otōto',
        entext: 'Younger Brother'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Members',
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Family_list.length,
        itemBuilder: (context, index) {
          return familyitem(Family: Family_list[index]);
        },
      ),
    );
  }
}

List<Widget> getlist(List<family> Family_list) {
  List<Widget> getitem = [];
  for (var i = 0; i < Family_list.length; i++) {
    getitem.add(familyitem(Family: Family_list[i]));
  }
  return getitem;
}
