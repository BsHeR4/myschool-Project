import 'package:flutter/material.dart';

class SubjectMarkBox extends StatelessWidget {
  const SubjectMarkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
            color: Color(0xffE6E6E6),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Math'),                    // growable childrens
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}