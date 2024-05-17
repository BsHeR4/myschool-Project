import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/widgets/custom_box.dart';
import 'package:myschool/widgets/subject_mark_button.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  static String id = 'NotePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff052659),
        title: Text(
          'Notes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              size: 40,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 40,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return CustomBox();
          }),
    );
  }
}
