import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

class profiledetails extends StatelessWidget {
  const profiledetails({
    super.key,
    required this.userName,
    required this.email,
  });

  final String? userName;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 70,
          child: Image.asset(
            'assets/images/Ellipse 6 (1).png',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          userName ?? 'Mohamed',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 5,
        ),
        CustomText(color:kPrimaryColor, text: email ?? 'Mohamed@Gmail.com'),
      ],
    );
  }
}
