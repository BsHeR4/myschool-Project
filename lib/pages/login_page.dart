import 'package:flutter/material.dart';
import 'package:myschool/components/custom_button.dart';
import 'package:myschool/components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052659),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 112,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/logo.jpeg',
                height: 80,
                width: 80,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'mySchool',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontFamily: 'pacifico'),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(110))),
              width: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SingleChildScrollView(
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
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      cutsomButton(text: 'Sign in'),
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
            ),
          )),
        ],
      ),
    );
  }
}
