import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/modles/house_card_model.dart';
import 'package:houseapp/view/house_detail_screen/widget/back_button.dart';
import 'package:houseapp/view/house_detail_screen/widget/wish_add_button.dart';

class HouseDetailScreen extends StatefulWidget {
  final HouseCardmodel card;
  const HouseDetailScreen({super.key,required this.card});

  @override
  State<HouseDetailScreen> createState() => _HouseDetailScreenState();
}

class _HouseDetailScreenState extends State<HouseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
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
             
             Container(
                height: 270,
                width: 305,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.card.Thumnil),fit: BoxFit.fill)
                ),
              ),

              const SizedBox(
                height: 20,
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.card.Title,
                              style: TextStyle(
                                  color: homeGrayBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                                  Text(
                                    widget.card.SubTitle,
                                    style: TextStyle(
                          color: homeGrayBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                                  ),
                          ],
                        ),
                         
                         WishAddButton(card: widget.card),
                            
                      ],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.bed,
                      color: Colors.amber.shade200,
                    ),
                    Text(
                      widget.card.Badrooms,
                      style: TextStyle(
                          color: homeGrayBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.bathtub_outlined,
                      color: Colors.amber.shade200,
                    ),
                    Text(
                      widget.card.Bathrooms,
                      style: TextStyle(
                          color: homeGrayBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.car_crash_outlined,
                      color: Colors.amber.shade200,
                    ),
                    Text(
                      widget.card.Garage,
                      style: TextStyle(
                          color: homeGrayBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                  ],
                ),
              ),
              
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(widget.card.ProfileModels.ProfileImage),
                ),
                title: Text(widget.card.ProfileModels.ProfileName),
                subtitle: Text(widget.card.ProfileModels.ProfileCaption),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 36,
                    width: 80,
                    decoration: BoxDecoration(
                      color: homeBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.phone,color: homeGrayWhite,size: 18,),
                          Text('Call',style: TextStyle(
                            color: homeGrayWhite,
                            fontSize: 13
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            
             SizedBox(
              width: 405,
              height: 100,
              child: Text(widget.card.Discription)),
          
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Gallery',
                  style: TextStyle(
                    color: homeGrayBlue,
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                  ),),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(widget.card.GalleryModels.GalleryPic1))
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(widget.card.GalleryModels.GalleryPic2))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(widget.card.GalleryModels.GalleryPic3))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(widget.card.GalleryModels.GalleryPic4))
                          ),
                        ),
                      ),
                    
                    ],
                  ),
                ],
               ),
             ),
             
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.currency_rupee,color: homeGrayBlue
                      ,),
                      Text(widget.card.Price.toString(),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: homeGrayBlue,
                      ),),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: homeGrayBlue,
                      ),
                      child: Center(
                        child: Text('BUY NOW',
                        style: TextStyle(
                          color: homeGrayWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w100
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ],
          ),
      ),
    );
  }
}