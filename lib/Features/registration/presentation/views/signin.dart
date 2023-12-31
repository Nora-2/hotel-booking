// ignore_for_file: prefer_const_constructors


import 'package:bookly/Features/home/presentation/views/homelayout.dart';
import 'package:bookly/Features/registration/presentation/views/background.dart';
import 'package:bookly/Features/registration/presentation/views/customtxtformfield.dart';
import 'package:bookly/Features/registration/presentation/views/forgetpassword.dart';
import 'package:bookly/Features/registration/presentation/views/signup.dart';
import 'package:bookly/core/utils/constants.dart';

import 'package:flutter/material.dart';



class SignIn extends StatelessWidget {
   SignIn({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
    appBar: AppBar(backgroundColor:Colors.transparent,
        elevation: 0,),
      body:Background(
        child:  SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const Text(
                  "Hello",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                const Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          child: customformfield(
                          hint: "Email",
                          preicon: Icon(
                            Icons.email,
                            size: MediaQuery.of(context).size.width * 0.05,
                            color: kPrimaryColor,
                          ),
                          text: TextInputType.emailAddress,
                          sign: '@',
                          massege: 'Please enter a valid email',
                        ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          child: customformfield(
                          hint: 'Password',
                          preicon: Icon(
                            Icons.lock,
                            size: MediaQuery.of(context).size.width * 0.05,
                            color: kPrimaryColor,
                          ),
                        )
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (changepass())));
                  },
                            child: Text(
                              "Forget your password",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                          Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.1,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 230, 85),
                                Color.fromARGB(255, 176, 74, 166),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 0.1,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: IconButton(
                            onPressed: () {

    if (_formKey.currentState!.validate()) {

      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Processing Data')),
      // );
       Navigator.push(
            context, MaterialPageRoute(builder: (context) =>HomeLayout()));
      
    }
  },
                            icon: Icon(Icons.navigate_next_rounded),
                          ),
                        ),
                      )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(fontSize: 14),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignUp();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Create",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.0,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),)
    );
  }
}
