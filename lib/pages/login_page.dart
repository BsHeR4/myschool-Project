import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myschool/constants.dart';
import 'package:myschool/models/login_model.dart';
import 'package:myschool/pages/main_page.dart';
import 'package:myschool/widgets/custom_button.dart';
import 'package:myschool/widgets/custom_text_field.dart';
import 'package:myschool/widgets/default_login_sliver_app_bar.dart';
import 'package:myschool/widgets/max_scroling_login_sliver_app_bar.dart';
import 'package:myschool/pages/home_page_without_announcment.dart';
import 'package:myschool/providers/login_provider.dart';
import 'package:myschool/services/login_service.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              ? DefaultLoginSliverAppBar()
              : MaxScrollingSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
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
                        buttonColor: kPrimaryColor,
                        textColor: Colors.white,
                        onTap: () async {
                          Provider.of<LoginProvider>(context, listen: false)
                              .loginData = await LoginService().Login(
                            userName: userName!,
                            password: password!,
                          );

                          if (Provider.of<LoginProvider>(context, listen: false)
                                  .loginData !=
                              null) {
                            Navigator.popAndPushNamed(context, MainPage.id);
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
