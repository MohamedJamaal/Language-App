import 'package:flutter/material.dart';
import 'package:japanes_app/components/NumbersWidget.dart';
import 'package:japanes_app/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      sound: 'audio/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    Number(
        sound: 'audio/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ichi',
        enName: 'two'),
    Number(
        sound: 'audio/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'ichi',
        enName: 'three'),
    Number(
        sound: 'audio/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'ichi',
        enName: 'four'),
    Number(
        sound: 'audio/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'ichi',
        enName: 'five'),
    Number(
        sound: 'audio/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'ichi',
        enName: 'six'),
    Number(
        sound: 'audio/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'ichi',
        enName: 'seven'),
    Number(
        sound: 'audio/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'ichi',
        enName: 'eight'),
    Number(
        sound: 'audio/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'ichi',
        enName: 'nine'),
    Number(
        sound: 'audio/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ichi',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        // buildin loop
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumbersWidget(
            color: const Color(0xffEF9235),
            numbers: numbers[index],
          );
        },
      ),
    );
  }

  // loop ast5dmt mkanha listView.builder
  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(NumbersWidget(numbers: numbers[i]));
  //   }
  //   return itemList;
  // }
}
