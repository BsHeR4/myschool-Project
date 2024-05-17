import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/widgets/homework_box.dart';
import 'package:myschool/widgets/mark_box.dart';

class ShowHomeworkPage extends StatelessWidget {
  const ShowHomeworkPage({super.key});
  static String id = 'ShowHomeworkPage';
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff052659),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return HomeworkBox();
          }),
    );
  }
}
