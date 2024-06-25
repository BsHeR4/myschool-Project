import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/models/subject_model.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/services/subject_service.dart';
import 'package:myschool/widgets/drawer_nav.dart';
import 'package:myschool/widgets/subject_mark_box.dart';
import 'package:provider/provider.dart';

class MarkPage extends StatefulWidget {
  const MarkPage({super.key});
  static String id = 'MarkPage';

  @override
  State<MarkPage> createState() => _MarkPageState();
}

class _MarkPageState extends State<MarkPage> {
  @override
  Widget build(BuildContext context) {
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;
    return Scaffold(
        drawer: DrawerNav(),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          backgroundColor: Color(0xff052659),
          title: Text(
            'Marks',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 40,
                  color: Colors.white,
                )),
          ],
        ),
        body: FutureBuilder<List<SubjectModel>>(
            future: SubjectService().StudentSubject(
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
                List<SubjectModel> subjectList = snapshot.data!;
                if (subjectList.isNotEmpty) {
                  return RefreshIndicator(
                    child: ListView.builder(
                        itemCount: subjectList.length,
                        itemBuilder: (context, index) {
                          return SubjectMarkBox(
                            subjectName: subjectList[index].subjectName,
                            subjectId: subjectList[index].id,
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
                                'assets/images/noSubject.png',
                              ),
                              Text(
                                'There is no subject yet',
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




//  Padding(
//         padding: const EdgeInsets.all(20),
//         child: GridView.builder(
//             clipBehavior: Clip.none,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1.1,
//                 crossAxisSpacing: 50,
//                 mainAxisSpacing: 55),
//             itemCount: 16,
//             itemBuilder: (context, index) {
//               return SubjectMarkBox();
//             }),
//       ),