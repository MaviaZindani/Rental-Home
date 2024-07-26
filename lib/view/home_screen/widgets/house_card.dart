import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/modles/house_card_model.dart';

class HouseCard extends StatelessWidget {
  final HouseCardmodel card;
  const HouseCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
      child: Container(
        height: 320,
        width: 305,
        decoration: BoxDecoration(
          color: homeGrayBlue,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(topLeft:Radius.circular(22),topRight: Radius.circular(22)),
                image: DecorationImage(fit: BoxFit.fill ,image: AssetImage(card.Thumnil))
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card.Title,
                    style: TextStyle(
                        color: homeGrayWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
              Text(
                card.SubTitle,
                style: TextStyle(
                    color: homeGrayWhite,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
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
                        color: homeGrayWhite,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.bathtub_outlined,
                    color: Colors.amber.shade400,
                  ),
                  Text(
                    card.Bathrooms,
                    style: TextStyle(
                        color: homeGrayWhite,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.car_crash_outlined,
                    color: Colors.amber.shade400,
                  ),
                  Text(
                    card.Garage,
                    style: TextStyle(
                        color: homeGrayWhite,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
