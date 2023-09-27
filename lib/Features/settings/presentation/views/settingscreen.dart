import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

class settingView extends StatelessWidget {
  settingView({
    super.key,
  });
  static String id = 'settings';
  String? userName;
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: Image.asset(
                      'assets/images/user.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mohamed Ahmed',
                    style: TextStyle(color: Colors.black),
                  ),
                  CustomText(text: 'mohammed15@gmail.com'),
                  SizedBox(
                    height: 20,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Name'),
                      CustomProfileTextField(isPassword: false),
                      CustomText(text: 'Email'),
                      CustomProfileTextField(isPassword: false),
                      CustomText(text: 'Password'),
                      CustomProfileTextField(
                        isPassword: true,
                      ),
                      CustomText(text: 'Phone Number'),
                      CustomProfileTextField(isPassword: false),
                      CustomText(text: 'Date of Birth'),
                      CustomProfileTextField(isPassword: false),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
