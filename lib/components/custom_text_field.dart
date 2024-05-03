import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.onChanged, this.hintText, this.obscureText = false});
  String? hintText;
  bool obscureText;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        validator: (data) {
          if (data!.isEmpty) {
            return 'the field is required';
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffA8A6A6)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff052659),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff052659),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff052659),
            ),
          ),
        ));
  }
}
