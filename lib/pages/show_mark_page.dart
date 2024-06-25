import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/models/mark_model.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/services/mark_service.dart';
import 'package:myschool/widgets/mark_box.dart';
import 'package:provider/provider.dart';

class ShowMarkPage extends StatefulWidget {
  const ShowMarkPage({super.key});
  static String id = 'SubjectMarkPage';

  @override
  State<ShowMarkPage> createState() => _ShowMarkPageState();
}

class _ShowMarkPageState extends State<ShowMarkPage> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff052659),
        title: Text(
          arguments[1],
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: MarkService().StudentMark(
            token: loginData!.token,
            accept: 'application/json',
            idS: arguments[0]),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error : ${snapshot.error}'));
          } else {
            List<MarkModel> marksList = snapshot.data!;
            if (marksList.isNotEmpty) {
              return RefreshIndicator(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Card(
                        color: Colors.grey[200],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text('Max : '),
                                Text(marksList[1].maxSubjectMark.toString()),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Min : '),
                                Text(marksList[1].minSubjectMark.toString()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: marksList.length,
                          itemBuilder: (context, index) {
                            return MarkBox(
                                teacherName: marksList[index].teacherName,
                                mark: marksList[index].mark,
                                max: marksList[index].maxMark,
                                Name: marksList[index].type);
                          }),
                    ),
                  ],
                ),
                onRefresh: () {
                  return Future.delayed(Duration(seconds: 1), () {
                    setState(() {});
                  });
                },
              );
            } else {
              return RefreshIndicator(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/noMarks.png',
                          ),
                          Text(
                            'There is no marks found',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onRefresh: () {
                  return Future.delayed(Duration(seconds: 1), () {
                    setState(() {});
                  });
                },
              );
            }
          }
        }),
      ),
    );
  }
}
