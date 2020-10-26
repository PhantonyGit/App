import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChange;

  const TextFieldWidget(
      {Key key,
      this.hintText,
      this.prefixIconData,
      this.suffixIconData,
      this.obscureText,
      this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: obscureText,
      style: TextStyle(color: Colors.lightBlue, fontSize: 14.0),
      cursorColor: Colors.lightBlue,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Colors.lightBlue,
        ),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.lightBlue)),
        suffixIcon: Icon(
          suffixIconData,
          size: 10,
          color: Colors.lightBlue,
        ),
        labelStyle: TextStyle(color: Colors.lightBlue),
        focusColor: Colors.lightBlue,
      ),
    );
  }
}
