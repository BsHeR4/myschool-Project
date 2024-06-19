import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/pages/show_homework_page.dart';

class HomeworkButton extends StatelessWidget {
  HomeworkButton({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ShowHomeworkPage.id, arguments: text);
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
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
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
          right: -5,
          bottom: 6,
          child: Container(
            height: 175,
            width: 175,
            child: Image.asset(
              image,
            ),
          ),
        )
      ]),
    );
  }
}
