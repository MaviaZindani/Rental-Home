import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/view/home_screen/widgets/wish_button.dart';

class Hader extends StatelessWidget {
  const Hader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Location',
                   style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: homeGrayBlue,
                  ),
                  ),
                  Text('Los,Angeles, CA',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: homeGrayBlue,
                  ),
                  ),
                ],
              ),
              const WishButton()
            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Disvover Best\nSuitable Property',
             style: TextStyle(
               color: homeGrayBlue,
               fontSize: 24,
               fontWeight: FontWeight.w800
             ),
             ),
           ],
         ),
       ),
        
      ],
    );
  }
}