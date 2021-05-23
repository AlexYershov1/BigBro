import 'package:flutter/material.dart';


Widget appBarMain(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      'BigBro',
      style: TextStyle(
        fontWeight: FontWeight.bold
      ),
    ),
    elevation: 0.0,
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Color(0xFF4FC3F7)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Color(0xFF03A9F4), fontSize: 16);
}

TextStyle biggerTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 30);
}
