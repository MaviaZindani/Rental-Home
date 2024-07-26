import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/controller/house_fuctions.dart';
import 'package:houseapp/modles/house_card_model.dart';
import 'package:houseapp/view/home_screen/widgets/hader/hader.dart';
import 'package:houseapp/view/home_screen/widgets/hader/house_catugry_list.dart';
import 'package:houseapp/view/home_screen/widgets/house_card.dart';
import 'package:houseapp/view/home_screen/widgets/near_by_list.dart';
import 'package:houseapp/view/house_detail_screen/house_detail_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final houseProvider =Provider.of<HouseFuctions>(context, listen: false);
    List<HouseCardmodel> data = houseProvider.houseData;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Hader(),
            const HouseCatugryList(),
            SizedBox(
              height: 340,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context,index){
                 return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HouseDetailScreen(card: data[index])));
                  },
                  child: HouseCard(card: data[index],),
                  );
                }
                ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                child: Text('Near by your location',
                style: TextStyle(
                  color: homeGrayBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),),
              ), 

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  height: double.maxFinite,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HouseDetailScreen(card: data[index])));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 4),
                          child: NearByList(card: data[index]),
                        ));
                    }
                    ),
                ),
              )
          ],
        ),
      )
    );
  }
}