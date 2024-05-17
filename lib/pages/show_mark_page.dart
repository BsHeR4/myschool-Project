import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/widgets/mark_box.dart';
import 'package:myschool/widgets/subject_mark_box.dart';

class ShowMarkPage extends StatelessWidget {
  const ShowMarkPage({super.key});
  static String id = 'SubjectMarkPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff052659),
        title: Text(
          'Mathemattic',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return MarkBox();
          }),
    );
  }
}
