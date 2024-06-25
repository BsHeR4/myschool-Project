import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/constants.dart';

class MarkBox extends StatelessWidget {
  MarkBox(
      {super.key,
      required this.teacherName,
      required this.mark,
      required this.max,
      required this.Name});
  String teacherName;
  int mark;
  int max;
  String Name;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey,
                  spreadRadius: -7,
                  offset: Offset(0, 8))
            ]),
            // constraints: BoxConstraints(
            //     maxHeight: MediaQuery.of(context).size.height * .30),
            child: Card(
              color: kSecondaryColor,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('4/4/2024'),
                        ],
                      ),
                      Text('Teacher Name :  $teacherName'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Student mark :  $mark'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Maximum :  $max'),
                      SizedBox(
                        height: 15,
                      ),

                      Text('Type :  $Name'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Test date :  1/3/2024'),

                      // growable childrens
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        right: 10,
        bottom: 26,
        child: Container(
          height: 180,
          width: 230,
          child: Image.asset('assets/images/Smiley_face.png'),
        ),
      )
    ]);
  }
}
