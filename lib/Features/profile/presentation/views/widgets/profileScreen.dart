import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/customTop.dart';
import 'package:bookly/Features/profile/presentation/views/widgets/profileviewwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, this.userName, this.email});
  static String id = 'profileview';
  final String? userName;
  final String? email;
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
       title: Text(
              'profile',
              style: GoogleFonts.lato().copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Tajawal',
              ),
            ),
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(height: size.height ,
                child: SingleChildScrollView(child: profileViewWidget(userName: userName, email: email))),
              customTop(
                 
              )
            ],
          ),
        ),
      ),
    );
  }
}
