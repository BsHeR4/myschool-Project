import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/models/homework_model.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/services/homework_service.dart';
import 'package:myschool/widgets/homework_box.dart';
import 'package:provider/provider.dart';

class ShowHomeworkPage extends StatefulWidget {
  const ShowHomeworkPage({super.key});
  static String id = 'ShowHomeworkPage';

  @override
  State<ShowHomeworkPage> createState() => _ShowHomeworkPageState();
}

class _ShowHomeworkPageState extends State<ShowHomeworkPage> {
  @override
  Widget build(BuildContext context) {
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;
    String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff052659),
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<StudentHomeworkModel>>(
            future: StudentHomeworkService().StudentHomework(
              token: loginData!.token,
              accept: 'application/json',
            ),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Error :${snapshot.error}'));
              } else {
                List<StudentHomeworkModel> homeworkList = snapshot.data!;
                if (homeworkList.isNotEmpty) {
                  return RefreshIndicator(
                    child: ListView.builder(
                        itemCount: homeworkList.length,
                        itemBuilder: (context, index) {
                          return HomeworkBox(
                            creator: homeworkList[index].creator,
                            subjectName: homeworkList[index].subjectName,
                            startDate: homeworkList[index].startDate,
                            endDate: homeworkList[index].endDate,
                          );
                        }),
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
                                'assets/images/noHomework.png',
                              ),
                              Text(
                                'There is no homeworks found',
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
            })));
  }
}
