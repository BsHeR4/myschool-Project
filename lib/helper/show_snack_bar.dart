import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';

void showSnackBar(BuildContext context, String message, Icon icon) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kSecondaryColor3,
      showCloseIcon: true,
      content: Row(
        children: [
          icon,
          SizedBox(
            width: 15,
          ),
          Text(
            message,
          ),
        ],
      ),
    ),
  );
}
