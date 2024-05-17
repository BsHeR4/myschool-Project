import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/widgets/homework_box.dart';
import 'package:myschool/widgets/homework_button.dart';
import 'package:myschool/widgets/subject_mark_box.dart';

class HomeworkPage extends StatelessWidget {
  const HomeworkPage({super.key});
  static String id = 'HomeworkPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff052659),
          title: Text(
            'Homeworks',
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
        body: Column(
          children: [
            HomeworkButton(
              text: 'New Homeworks',
              image: 'assets/images/personal_notebook.png',
            ),
            HomeworkButton(
              text: 'Completed Homeworks',
              image: 'assets/images/completing.png',
            ),
          ],
        ));
  }
}
