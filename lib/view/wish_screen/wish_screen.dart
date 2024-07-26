import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/controller/house_fuctions.dart';
import 'package:houseapp/modles/house_card_model.dart';
import 'package:houseapp/view/house_detail_screen/widget/back_button.dart';
import 'package:houseapp/view/wish_screen/widget/wish_box.dart';
import 'package:provider/provider.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishListHouseProvider = Provider.of<HouseFuctions>(context,listen: false);
    List<HouseCardmodel> wishlist = wishListHouseProvider.wishList;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Detail',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: homeGrayBlue,
                          ),
                          ),
                        ],
                      ),
                      const BackButton1(),
                    ],
                  ),
                ),
                wishlist.isNotEmpty?
            Container(
              height: double.maxFinite,
              width: 315,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: wishlist.length,
                itemBuilder: (context,index){
                  return 
                   WishBox(card: wishlist[index]);
                   }
                ),
            ):
            Container(
              height: 400,
              width: 315,
              child: const Center(
                      child: Text('There has\n no data',
                      style: TextStyle(
                        fontSize: 22,
                      ),),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}