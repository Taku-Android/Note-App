import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines  = 1}) : super(key: key);


  final String hint ;
  final int maxLines  ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder() ,
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor
        ),
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