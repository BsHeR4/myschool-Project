import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/components/custom_button.dart';
import 'package:myschool/components/custom_text_field.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/pages/home_page_without_announcment.dart';
import 'package:myschool/services/login_service.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginModel? loginModel;
  ScrollController _scrollController = ScrollController();
  bool maxScrolling = false;

  String? userName;
  String? password;
  @override
  void initState() {
    _scrollController.addListener(_listenToScrollMomment);

    super.initState();
  }

  void _listenToScrollMomment() {
    if (_scrollController.offset ==
        _scrollController.position.minScrollExtent) {
      maxScrolling = false;
    } else if (_scrollController.offset ==
        _scrollController.position.maxScrollExtent) {
      maxScrolling = true;
    } else {
      maxScrolling = false;
    }
    setState(() {
      maxScrolling;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          !maxScrolling
              ? SliverAppBar(
                  // bottom: PreferredSize(
                  //   preferredSize: Size.fromHeight(4),
                  //   child: Container(
                  //     width: double.infinity,
                  //     height: 100,
                  //     decoration: BoxDecoration(
                  //         color: Colors.black,
                  //         borderRadius: BorderRadius.only(
                  //             topRight: Radius.circular(110))),
                  //   ),
                  // ),
                  backgroundColor: Color(0xff052659),
                  elevation: 0,
                  floating: false,
                  pinned: false,
                  expandedHeight: 300.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/logo.jpeg',
                              cacheHeight: 100,
                              height: 100,
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            'mySchool',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'pacifico'),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : SliverAppBar(
                  backgroundColor: Color(0xff052659),
                  elevation: 0,
                  floating: false,
                  pinned: false,
                  expandedHeight: 300.0,
                  centerTitle: true,
                  title: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/logo.jpeg',
                          cacheHeight: 50,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'mySchool',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'pacifico'),
                      ),
                    ],
                  ),
                ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(110))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 52,
                      ),
                      Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Sign in to continue.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA8A6A6),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('User Name'),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        hintText: 'Enter User Name',
                        onSubmit: (p0) {
                          // onSubmit = true;
                          setState(() {
                            maxScrolling = false;
                          });
                        },
                        onChanged: (userName) {
                          this.userName = userName;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Password'),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextField(
                        hintText: 'Enter Password',
                        onSubmit: (p0) {
                          setState(() {
                            maxScrolling = false;
                          });
                        },
                        onChanged: (password) {
                          this.password = password;
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      cutsomButton(
                        text: 'Sign in',
                        onTap: () async {
                          loginModel = await LoginService().Login(
                            userName: userName!,
                            password: password!,
                          );
                          if (loginModel != null) {
                            Navigator.pushNamed(
                              context,
                              HomePageWithoutAnnouncment.id,
                              arguments: loginModel,
                            );
                          } else {
                            print('Null');
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA8A6A6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


// Scaffold(
//       backgroundColor: Color(0xff052659),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 112,
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 'assets/images/logo.jpeg',
//                 height: 80,
//                 width: 80,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 14,
//           ),
//           Text(
//             'mySchool',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 22, fontFamily: 'pacifico'),
//           ),
//           Expanded(
//               child: Padding(
//             padding: const EdgeInsets.only(top: 100),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius:
//                       BorderRadius.only(topRight: Radius.circular(110))),
//               width: 500,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 52,
//                       ),
//                       Center(
//                         child: Text(
//                           'Login',
//                           style: TextStyle(
//                             fontSize: 32,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Center(
//                         child: Text(
//                           'Sign in to continue.',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xffA8A6A6),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Text('User Name'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       CustomTextField(
//                         hintText: 'Enter User Name',
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Text('Password'),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       CustomTextField(
//                         hintText: 'Enter Password',
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                       cutsomButton(text: 'Sign in'),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Center(
//                         child: Text(
//                           'Forget Password?',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xffA8A6A6),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )),
//         ],
//       ),
//     );