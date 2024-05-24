import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/models/student_profile_model.dart';
import 'package:myschool/services/student_profile_service.dart';
import 'package:myschool/widgets/bottom_navigation_bar.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:provider/provider.dart';

class HomePageWithoutAnnouncment extends StatelessWidget {
  HomePageWithoutAnnouncment({super.key});
  static String id = 'HomePageWithoutAnnouncment';

  @override
  Widget build(BuildContext context) {
    LoginModel? loginData =
        Provider.of<LoginProvider>(context, listen: false).loginData;

    return FutureBuilder<StudentProfileModel>(
        future: StudentProfileService().StudentProfile(
            token: loginData!.token, accept: 'application/json'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error :${snapshot.error}'));
          } else {
            return Scaffold(
                body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: kPrimaryColor,
                  elevation: 0,
                  floating: false,
                  pinned: true,
                  expandedHeight: 370,
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_outlined,
                        size: 40,
                        color: Colors.white,
                      )),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          size: 40,
                          color: Colors.white,
                        )),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 125,
                            color: Colors.white,
                          ),
                          Text(
                            snapshot.data!.username,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                'Student Name : ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kSecondaryColor,
                                ),
                              ),
                              Text(
                                '${snapshot.data!.firsName} ${snapshot.data!.lastName}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                'Class : ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kSecondaryColor,
                                ),
                              ),
                              Text(
                                snapshot.data!.className,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                'Division : ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kSecondaryColor,
                                ),
                              ),
                              Text(
                                snapshot.data!.division,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          ' Announcments',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/no-announcment.png',
                      height: 280,
                    ),
                    Center(
                      child: Text(
                        'There is no announcment now',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
                ),
              ],
            ));
          }
        });
  }
}
