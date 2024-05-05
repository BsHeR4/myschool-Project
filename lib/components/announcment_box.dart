import 'package:flutter/material.dart';

class AnnouncmentBox extends StatelessWidget {
  const AnnouncmentBox({super.key});

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('4/6/2024'),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('There is an extra sport class tomorrow'),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('by teacherName')],
                    )
                    // growable childrens
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




// Center(
//       child: Align(
//         alignment: Alignment.centerRight,
//         child: Container(
//           padding: EdgeInsets.all(15),
//           margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           height: 120,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//             color: Color(0xffE6E6E6),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text('4/6/2024'),
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Text('There is an extra sport class tomorrow .'),
//               SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [Text('by teacherName')],
//               )
//             ],
//           ),
//         ),
//       ),
//     );