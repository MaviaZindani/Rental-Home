import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';

class BackButton1 extends StatelessWidget {
  const BackButton1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Card(
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
              color: homeGrayWhite,
              borderRadius: BorderRadius.circular(12),
              ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}