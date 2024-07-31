import 'package:flutter/material.dart';
import 'package:japanes_app/components/item_info.dart';
import 'package:japanes_app/models/ItemModel.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.color, required this.item});
  final ItemModel item;
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
            child: Image.asset(item.image!),
          ),
          Expanded(
            child: ItemInfo(
              item: item,
            ),
          ),
        ],
      ),
    );
  }
}
