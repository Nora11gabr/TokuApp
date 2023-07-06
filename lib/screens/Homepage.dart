import 'package:flutter/material.dart';
import 'package:tokuapp/compontents/Catogry.dart';
import 'package:tokuapp/screens/ColorPage.dart';
import 'package:tokuapp/screens/familymembers.dart';
import 'package:tokuapp/screens/phrases.dart';

import 'Numbers.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 225, 197),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Catogry(
            OnTapp: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: Color(0xffFF9F3B),
          ),
          Catogry(
              OnTapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return familypage();
                    },
                  ),
                );
              },
              text: 'Family Mumbers',
              color: Color(0xff5d8b3e)),
          Catogry(
              OnTapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Color_page();
                    },
                  ),
                );
              },
              text: 'Colors',
              color: Color(0xff854cae)),
          Catogry(
              OnTapp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return phrases();
                    },
                  ),
                );
              },
              text: 'Phrases',
              color: Color(0xff51b0d5)),
        ],
      ),
    );
  }
}
