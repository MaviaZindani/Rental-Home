import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';

class HouseCatugryList extends StatelessWidget {
  const HouseCatugryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: homeGrayWhite
                ),
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Center(child: Text('mavia')),
                ),
              ),
            ),
          );
        }
        ),
    );
  }
}