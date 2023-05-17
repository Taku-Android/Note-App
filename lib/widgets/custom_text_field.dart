import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines  = 1, this.onSaved}) : super(key: key);


  final String hint ;
  final int maxLines  ;

  final void Function(String?)? onSaved ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }

      },
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