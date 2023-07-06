import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/model/Color.dart';
import 'package:tokuapp/model/number.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:tokuapp/model/phrases.dart';

import '../model/family.dart';

class item extends StatelessWidget {
  const item({Key? key, required this.number}) : super(key: key);
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFF9F3B),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 245, 237, 228),
            child: Image.asset(number.img),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jptext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.entext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio(number.sound),
              );
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class familyitem extends StatelessWidget {
  const familyitem({Key? key, required this.Family}) : super(key: key);
  final family Family;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff5d8b3e),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 245, 237, 228),
            child: Image.asset(Family.img),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Family.jptext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                Family.entext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio(Family.sound),
              );
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Coloritem extends StatelessWidget {
  const Coloritem({Key? key, required this.color_}) : super(key: key);
  final Color_model color_;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff854cae),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 245, 237, 228),
            child: Image.asset(color_.img),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                color_.jptext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                color_.entext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio(color_.sound),
              );
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class phrasesitem extends StatelessWidget {
  const phrasesitem({Key? key, required this.phrases_}) : super(key: key);
  final phrases_model phrases_;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff51b0d5),
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrases_.jptext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                phrases_.entext,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio(phrases_.sound),
              );
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
