import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/constants.dart';

class MarkBox extends StatelessWidget {
  const MarkBox({super.key});

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
                      Text('Teacher Name :  Bsher Al-mahayni'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Student mark :  500'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Maximum :  600'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Minimum :  300'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Test type :  Final'),
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
        bottom: 30,
        child: Container(
          height: 200,
          width: 250,
          child: Image.asset('assets/images/Smiley_face.png'),
        ),
      )
    ]);
  }
}
