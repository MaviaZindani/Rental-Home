import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/modles/house_card_model.dart';

class NearByList extends StatelessWidget {
  final HouseCardmodel card;
  const NearByList({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: homeGrayWhite,
      ),
      child: ListTile(
        leading:Image.asset(card.Thumnil),
        title: Text(card.Title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: homeGrayBlue,
        ),),
      
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(card.SubTitle,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: homeGrayBlue,
            ),),
      
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.bed,
                  color: Colors.amber.shade400,
                ),
                Text(
                  card.Badrooms,
                  style: TextStyle(
                      color: homeTextColor,
                      fontSize: 9,
                      fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.bathtub_outlined,
                  color: Colors.amber.shade400,
                ),
                Text(
                  card.Bathrooms,
                  style: TextStyle(
                      color: homeTextColor,
                      fontSize: 9,
                      fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.car_crash_outlined,
                  color: Colors.amber.shade400,
                ),
                Text(
                  card.Garage,
                  style: TextStyle(
                      color: homeTextColor,
                      fontSize: 9,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}