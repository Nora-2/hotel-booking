// ignore_for_file: prefer_const_constructors

import 'package:bookly/Features/home/presentation/views/homelayout.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/custom_button.dart';

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({super.key});
  static String id = 'Register';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme:IconThemeData(color: kPrimaryColor) ,
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
                    "sign up",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'First name'),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: size.width * .4,
                                  child: CustomTextFieldsetting(
                                    Hint: 'Mohamed',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                            width: size.width * .09,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'Last name'),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: size.width * .4,
                                  child: CustomTextFieldsetting(
                                    Hint: 'Ahmed',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomText(text: 'Email'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          child:
                              CustomTextFieldsetting(Hint: 'Mohamed@gmail.com'),
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
                          height: 25,
                        ),
                        CustomText(text: 'Phone Number'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          child: CustomTextFieldsetting(
                            preicon: Image(
                                image: AssetImage(
                                    'assets/images/Group 16678.png')),
                            Hint: '+ 20 10222564 ',
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomText(text: 'Date of Birth'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 40,
                            child:
                                CustomTextFieldsetting(Hint: '25 / 12 / 2000')),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: CustomButton(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              backgroundColor: kPrimaryColor,
                              textColor: Colors.white,
                              text: 'Sign up'),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }
}
