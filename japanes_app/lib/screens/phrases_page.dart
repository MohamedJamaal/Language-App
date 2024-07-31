import 'package:flutter/material.dart';
import 'package:japanes_app/components/phrases_item.dart';
import 'package:japanes_app/models/ItemModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'audio/phrases/are_you_coming.wav',
      jpName: 'ichi',
      enName: 'Are You Coming',
    ),
    ItemModel(
      sound: 'audio/phrases/dont_forget_to_subscribe.wav',
      jpName: 'ichi',
      enName: 'Dont Forget To Subscribe',
    ),
    ItemModel(
      sound: 'audio/phrases/how_are_you_feeling.wav',
      jpName: 'ichi',
      enName: 'How Are You Feeling',
    ),
    ItemModel(
      sound: 'audio/phrases/i_love_anime.wav',
      jpName: 'ichi',
      enName: 'I Love Anime',
    ),
    ItemModel(
        sound: 'audio/phrases/i_love_programming.wav',
        jpName: 'ichi',
        enName: 'I Love Programming'),
    ItemModel(
        sound: 'audio/phrases/programming_is_easy.wav',
        jpName: 'ichi',
        enName: 'Programming Is Easy'),
    ItemModel(
        sound: 'audio/phrases/what_is_your_name.wav',
        jpName: 'ichi',
        enName: 'What Is Your Name'),
    ItemModel(
        sound: 'audio/phrases/where_are_you_going.wav',
        jpName: 'ichi',
        enName: 'Where Are You Going'),
    ItemModel(
        sound: 'audio/phrases/yes_im_coming.wav',
        jpName: 'ichi',
        enName: 'Yes Im Coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
        backgroundColor: const Color(0xff50ADC7),
      ),
      body: ListView.builder(
        // buildin loop
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff558B37),
            item: phrasesList[index],
          );
        },
      ),
    );
  }
}
