import 'package:flutter/material.dart';
import 'package:myschool/pages/show_mark_page.dart';

class SubjectMarkButton extends StatelessWidget {
  SubjectMarkButton({super.key, required this.heroTag});
  String heroTag;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      splashColor: Colors.grey[300],
      elevation: 3,
      backgroundColor: Color(0xffE6E6E6),
      onPressed: () {
        Navigator.pushNamed(context, ShowMarkPage.id);
      },
      child: Text(
        'mathemattic',
        style: TextStyle(color: Colors.black),
      ),
    );
    // Center(
    //   child: Padding(
    //     padding: const EdgeInsets.all(15),
    //     child: GestureDetector(
    //       child: Container(
    //         // height: 150,
    //         // width: 150,
    //         decoration: BoxDecoration(boxShadow: [
    //           BoxShadow(
    //               blurRadius: 10,
    //               color: Colors.grey,
    //               spreadRadius: -7,
    //               offset: Offset(0, 8))
    //         ]),
    //         // constraints: BoxConstraints(
    //         //     maxHeight: MediaQuery.of(context).size.height * .30),
    //         child: Card(
    //           color: Color(0xffE6E6E6),
    //           child: Padding(
    //             padding: const EdgeInsets.all(20),
    //             child: Center(child: Text('Mathemattics')),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
