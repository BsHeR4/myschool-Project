import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/widgets/custom_button.dart';

class HomeworkBox extends StatelessWidget {
  HomeworkBox({
    super.key,
    required this.creator,
    required this.subjectName,
    required this.startDate,
    required this.endDate,
  });
  String creator, subjectName, startDate, endDate;
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
                          Text(startDate),
                        ],
                      ),
                      Text('Teacher Name :  $creator'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Subject : $subjectName'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('End Date : $endDate'),
                      // growable childrens
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 75,
                        endIndent: 75,
                        thickness: 0.1,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                        ),
                        child: CutsomButton(
                          text: 'Download PDF',
                          textColor: Colors.white,
                          buttonColor: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      // Positioned(
      //   right: 10,
      //   bottom: 30,
      //   child: Container(
      //     height: 200,
      //     width: 250,
      //     child: Image.asset('assets/images/Smiley_face.png'),
      //   ),
      // )
    ]);
  }
}
