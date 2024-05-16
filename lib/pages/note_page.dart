import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  static String id = 'NotePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('NotePage')),
    );
  }
}
