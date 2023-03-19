
import 'package:flutter/material.dart';

InputDecoration TextFieldStyle(label,hint){
  return InputDecoration(
    labelText: label,
    hintText: hint,
    filled: true,
    fillColor: Colors.white70,
    border: OutlineInputBorder(),
  );
}

TextStyle AppTextStyle(){
  return TextStyle(fontSize: 40,fontWeight: FontWeight.w800,);
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
  );
}