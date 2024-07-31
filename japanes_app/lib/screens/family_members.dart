import 'package:flutter/material.dart';
import 'package:japanes_app/components/list_item.dart';
import 'package:japanes_app/models/ItemModel.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> listItems = const [
    ItemModel(
      sound: 'audio/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'ichi',
      enName: 'Father',
    ),
    ItemModel(
        sound: 'audio/family_members/mather.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'ichi',
        enName: 'Mother'),
    ItemModel(
        sound: 'audio/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'ichi',
        enName: 'Dauther'),
    ItemModel(
        sound: 'audio/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'ichi',
        enName: 'Son'),
    ItemModel(
        sound: 'audio/family/older brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ichi',
        enName: 'Older Brother'),
    ItemModel(
        sound: 'audio/family/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ichi',
        enName: 'Older Sister'),
    ItemModel(
        sound: 'audio/family/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ichi',
        enName: 'Younger Brohter'),
    ItemModel(
        sound: 'audio/family/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'ichi',
        enName: 'Younger Sister'),
    ItemModel(
        sound: 'audio/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ichi',
        enName: 'Grand Father'),
    ItemModel(
        sound: 'audio/family/grand mother.wav',
        image: 'assets/images/family_members/grand_mother.png',
        jpName: 'ichi',
        enName: 'Grand Mother'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        // buildin loop
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff558B37),
            item: listItems[index],
          );
        },
      ),
    );
  }
}
