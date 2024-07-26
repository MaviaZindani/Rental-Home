import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/utils/routes.dart';

class WishButton extends StatelessWidget {
  const WishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.wishScreen);
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
