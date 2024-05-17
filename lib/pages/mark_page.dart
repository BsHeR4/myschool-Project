import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/widgets/custom_box.dart';
import 'package:myschool/widgets/subject_mark_box.dart';
import 'package:myschool/widgets/subject_mark_button.dart';

class MarkPage extends StatelessWidget {
  const MarkPage({super.key});
  static String id = 'MarkPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff052659),
        title: Text(
          'Marks',
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
            return SubjectMarkBox();
          }),
    );
  }
}




//  Padding(
//         padding: const EdgeInsets.all(20),
//         child: GridView.builder(
//             clipBehavior: Clip.none,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1.1,
//                 crossAxisSpacing: 50,
//                 mainAxisSpacing: 55),
//             itemCount: 16,
//             itemBuilder: (context, index) {
//               return SubjectMarkBox();
//             }),
//       ),