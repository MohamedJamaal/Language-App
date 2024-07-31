import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japanes_app/models/numbers.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key, required this.numbers, required this.color});
  final ItemModel numbers;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC),
              child: Image.asset(numbers.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numbers.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  numbers.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource(numbers.sound),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}
