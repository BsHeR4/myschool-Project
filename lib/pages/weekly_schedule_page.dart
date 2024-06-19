import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/models/weekly_schedule_student.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/services/weekly_schedule_student_service.dart';
import 'package:provider/provider.dart';

class WeeklySchedule extends StatefulWidget {
  WeeklySchedule({super.key});
  static String id = 'WeeklySchedule';

  @override
  State<WeeklySchedule> createState() => _WeeklyScheduleState();
}

class _WeeklyScheduleState extends State<WeeklySchedule> {
  @override
  Widget build(BuildContext context) {
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff052659),
        title: Text(
          'Weekly Schedule',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<WeeklyScheduleStudentModel>(
        future: WeeklyScheduleStudentService().WeeklyScheduleStudent(
            token: loginData!.token, accept: 'application/json'),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error : ${snapshot.error}'));
          } else {
            WeeklyScheduleStudentModel weeklySchedule = snapshot.data!;
            print(weeklySchedule.WeeklyScheduleUrl);
            if (weeklySchedule.WeeklyScheduleUrl.isNotEmpty) {
              return RefreshIndicator(
                child: Center(
                  child: Image.network(
                    '$baseUrl/${weeklySchedule.WeeklyScheduleUrl}',
                    cacheHeight: 1000,
                    cacheWidth: 1000,
                    height: 1000,
                    width: 800,
                  ),
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
                            'assets/images/noNote.png',
                          ),
                          Text(
                            'There is no Schedule found',
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
