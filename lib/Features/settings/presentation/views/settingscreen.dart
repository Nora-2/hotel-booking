import 'package:bookly/Features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

class settingView extends StatelessWidget {
  const settingView({super.key, required this.userName, required this.email});
  static String id = 'settings';
  final String userName;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(),
              Text(userName),
                CustomText(text: email),
              CustomText(text: 'Name'),
              CustomTextField(),
              CustomText(text: 'Email'),
              CustomTextField(),
              CustomText(text: 'Password'),
              CustomTextField(),
              CustomText(text: 'Phone Number'),
              CustomTextField(),
              CustomText(text: 'Date of Birth'),
              CustomTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
