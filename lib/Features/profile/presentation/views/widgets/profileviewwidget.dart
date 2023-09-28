import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/Features/profile/presentation/views/widgets/profileDetails.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

class profileViewWidget extends StatelessWidget {
  const profileViewWidget({
    super.key,
    required this.userName,
    required this.email,
  });

  final String? userName;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 30.0, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    profiledetails(userName: userName, email: email),
    SizedBox(
      height: 5,
    ),
    CustomText(color: kPrimaryColor, text: 'Name'),
    SizedBox(
      height: 5,
    ),
    Container(
      height: 40,
      child: CustomTextFieldsetting(
        Hint: 'Mohamed ahmed mohamed',
      ),
    ),
    SizedBox(
      height: 10,
    ),
    CustomText(text: 'Email'),
    SizedBox(
      height: 5,
    ),
    Container(
      height: 40,
      child: CustomTextFieldsetting(
        Hint: 'Mohamed@Gmail.com',
      ),
    ),
    SizedBox(
      height: 10,
    ),
    CustomText(text: 'Password'),
    SizedBox(
      height: 5,
    ),
    Container(
      height: 40,
      child: CustomTextFieldsetting(
          Hint: '**********************************'),
    ),
    SizedBox(
      height: 10,
    ),
    CustomText(text: 'Phone Number'),
    SizedBox(
      height: 5,
    ),
    Container(
      height: 40,
      child: CustomTextFieldsetting(
        Hint: '+ 20 10222564 ',preicon: Image(image: AssetImage('assets/images/Group 16678.png')),
      ),
    ),
    SizedBox(
      height: 10,
    ),
    CustomText(text: 'Date of Birth'),
    SizedBox(
      height: 5,
    ),
    Container(
        height: 40,
        child: CustomTextFieldsetting(Hint: '25 / 12 / 2000')),
    SizedBox(
      height: 5,
    ),
            ],
          ),
        );
  }
}

