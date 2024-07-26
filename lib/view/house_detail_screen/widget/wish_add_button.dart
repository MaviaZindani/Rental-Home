import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/controller/house_fuctions.dart';
import 'package:houseapp/modles/house_card_model.dart';
import 'package:houseapp/utils/routes.dart';
import 'package:provider/provider.dart';

class WishAddButton extends StatelessWidget {
  final HouseCardmodel card;
  const WishAddButton({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final addcard = Provider.of<HouseFuctions>(context,listen: false);
    return GestureDetector(
      onTap: () {
        addcard.addTask(card);
      },
      child: Card(
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
              color: homeGrayWhite,
              borderRadius: BorderRadius.circular(12),
              ),
          child: const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.tag_outlined),
          ),
        ),
      ),
    );
  }
}
