import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/modles/house_card_model.dart';

class WishBox extends StatelessWidget {
  final HouseCardmodel card;
  const WishBox({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
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
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22)),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(card.Thumnil))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
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
                      ),
                    ],
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
