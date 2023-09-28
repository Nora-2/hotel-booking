import 'package:bookly/Features/payment/presentation/views/widgets/pymentViewBody.dart';
import 'package:bookly/core/utils/constants.dart';

import 'package:bookly/core/widgets/customTop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class paymentView extends StatelessWidget {
  const paymentView({super.key, this.userName, this.email});
  static String id = 'Payment';
  final String? userName;
  final String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
       title: Text(
              'Payment',
              style: GoogleFonts.lato().copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Tajawal',
              ),
            ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PaymentViewWidget(userName: userName, email: email),
              customTop(
                
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
