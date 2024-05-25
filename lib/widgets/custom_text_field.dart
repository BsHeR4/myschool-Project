import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.onChanged, this.hintText, this.obscureText = false, this.onSubmit, this.onTap});
  String? hintText;
  bool obscureText;
  Function(String)? onSubmit;
  Function(String)? onChanged;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
        obscureText: obscureText,
        validator: (data) {
          if (data!.isEmpty) {
            return 'the field is required';
          }
        },
        onFieldSubmitted: onSubmit,
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
