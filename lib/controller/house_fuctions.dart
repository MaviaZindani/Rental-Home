import 'package:flutter/material.dart';
import 'package:houseapp/dataprovider/house_data_provider.dart';
import 'package:houseapp/modles/gallery_model.dart';
import 'package:houseapp/modles/house_card_model.dart';
import 'package:houseapp/modles/profile_model.dart';

class HouseFuctions with ChangeNotifier {
  List<HouseCardmodel> houseData = [
    HouseCardmodel(
      "assets/images/homes/home_1/home_pic.png", 
      'CRAFTSMAN HOUSE', 
      '520 N Btoudry Ave Los Angeles', 
      '4 Bads',
      '4 Bath', 
      '3 Garage',
      'Garden West ',
       ProfileModel("assets/images/homes/home_1/home_owner.png", 'Rebecca Tetha', 'Owner Craftsman House', 'Nov/20/2004'),
      'Completely redone in 2021. 4 bedrooms. 4 bathrooms. 3 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More',
       5600000,
       GalleryModel("assets/images/homes/home_1/home_pic_1.png", "assets/images/homes/home_1/home_pic_2.png", "assets/images/homes/home_1/home_pic_3.png", "assets/images/homes/home_1/home_pic_4.png")
       ),
  
      HouseCardmodel(
      "assets/images/homes/home_1/home_pic.png", 
      'CRAFTSMAN HOUSE', 
      '520 N Btoudry Ave Los Angeles', 
      '4 Bads',
      '4 Bath', 
      '3 Garage',
      'Garden West ',
       ProfileModel("assets/images/homes/home_1/home_owner.png", 'Rebecca Tetha', 'Owner Craftsman House', 'Nov/20/2004'),
      'Completely redone in 2021. 4 bedrooms. 4 bathrooms. 3 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More',
       5600000,
       GalleryModel("assets/images/homes/home_1/home_pic_1.png", "assets/images/homes/home_1/home_pic_2.png", "assets/images/homes/home_1/home_pic_3.png", "assets/images/homes/home_1/home_pic_4.png")
       ),
      HouseCardmodel(
      "assets/images/homes/home_1/home_pic.png", 
      'CRAFTSMAN HOUSE', 
      '520 N Btoudry Ave Los Angeles', 
      '4 Bads',
      '4 Bath', 
      '3 Garage',
      'Garden West ',
       ProfileModel("assets/images/homes/home_1/home_owner.png", 'Rebecca Tetha', 'Owner Craftsman House', 'Nov/20/2004'),
      'Completely redone in 2021. 4 bedrooms. 4 bathrooms. 3 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More',
       5600000,
       GalleryModel("assets/images/homes/home_1/home_pic_1.png", "assets/images/homes/home_1/home_pic_2.png", "assets/images/homes/home_1/home_pic_3.png", "assets/images/homes/home_1/home_pic_4.png")
       ),
      HouseCardmodel(
      "assets/images/homes/home_1/home_pic.png", 
      'CRAFTSMAN HOUSE', 
      '520 N Btoudry Ave Los Angeles', 
      '4 Bads',
      '4 Bath', 
      '3 Garage',
      'Garden West ',
       ProfileModel("assets/images/homes/home_1/home_owner.png", 'Rebecca Tetha', 'Owner Craftsman House', 'Nov/20/2004'),
      'Completely redone in 2021. 4 bedrooms. 4 bathrooms. 3 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More',
       5600000,
       GalleryModel("assets/images/homes/home_1/home_pic_1.png", "assets/images/homes/home_1/home_pic_2.png", "assets/images/homes/home_1/home_pic_3.png", "assets/images/homes/home_1/home_pic_4.png")
       )
  ];

  List<HouseCardmodel> wishList = [];
  
  void addTask(HouseCardmodel card) {
    wishList.add(card);
    notifyListeners();
  }
}