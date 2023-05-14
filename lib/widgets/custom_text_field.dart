import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder() ,
        enabledBorder: buildBorder() ,
        focusedBorder: buildBorder(color: kPrimaryColor)
      ),
    );
  }
}


OutlineInputBorder buildBorder({color}) {
  return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white
      )
  );
}