import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cutsomButton extends StatelessWidget {
  cutsomButton({this.onTap, required this.text, required this.buttonColor, required this.textColor});
  String text;
  Color buttonColor;
  Color textColor;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor),
        )),
      ),
    );
  }
}
