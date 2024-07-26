import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';

class LoginSignupField extends StatelessWidget {
  const LoginSignupField({super.key,required this.textController, required this.textHint, required this.inputTextType, required this.prefixIcon});
  final TextEditingController textController;
  final Widget prefixIcon;
  final String textHint;
  final TextInputType inputTextType;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: inputTextType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: textHint,
        fillColor: homeGrayWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          ),
      ),
    );
  }
}