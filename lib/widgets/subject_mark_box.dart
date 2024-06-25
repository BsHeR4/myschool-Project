import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/pages/show_mark_page.dart';

class SubjectMarkBox extends StatelessWidget {
  SubjectMarkBox({super.key, required this.subjectName, required this.subjectId});
  String subjectName;
  int subjectId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ShowMarkPage.id,arguments: [subjectId, subjectName]);
      },
      child: Stack(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 9), //basic all(15)
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
                color: kSecondaryColor4, //Color(0xffE6E6E6)
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 15,
                          width: 300,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              subjectName,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
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
          right: 20,
          bottom: 6,
          child: Container(
            height: 110,
            width: 110,
            child: Image.asset(
              'assets/images/mathematic.png',
            ),
          ),
        )
      ]),
    );
  }
}
