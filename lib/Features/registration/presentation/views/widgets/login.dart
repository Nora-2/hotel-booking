// ignore_for_file: prefer_const_constructors

import 'package:bookly/Features/home/presentation/views/homelayout.dart';
import 'package:bookly/Features/registration/presentation/views/widgets/forgetpassword_screen.dart';
import 'package:bookly/Features/registration/presentation/views/widgets/register.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  static String id = 'login';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "sign in",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Email'),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        child: CustomTextFieldsetting(Hint: 'Mohamed@gmail.com'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomText(text: 'Password'),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        child: CustomTextFieldsetting(
                            ispassword: true,
                            Hint: '**********************************'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (forgetpassScreen())));
                            },
                            child: Text(
                              "did you Forget your password?",
                              style: TextStyle(
                                
                                decoration: TextDecoration.underline,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [CustomButton(
                          height:size.height *.055,
                          width:size.width *.6,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeLayout()));
                            }
                          },
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          backgroundColor: kPrimaryColor,
                          textColor: Colors.white,
                          text: 'Sign in'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: kPrimaryColor,
                       
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Image.asset('assets/images/Other email.png'),
                       SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account,",
                            style: TextStyle(fontSize: 14, color: kPrimaryColor,fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Register();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              " new user?",
                              style: TextStyle(
                                color: kPrimaryColor,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.0,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),],)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
