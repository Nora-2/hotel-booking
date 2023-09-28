
import 'package:bookly/Features/payment/presentation/views/paymentView.dart';
import 'package:bookly/Features/profile/presentation/views/widgets/profileScreen.dart';
import 'package:bookly/Features/profile/presentation/views/widgets/profileDetails.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/customTop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class settingView extends StatelessWidget {
  const settingView({super.key, this.userName, this.email});
  static String id = 'settingView';
  final String? userName;
  final String? email;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
              'Settings',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: size.height * 0.80,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        profiledetails(
                          userName: userName,
                          email: email,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kPrimaryColor),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Profile',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w700),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileView(
                                          userName: userName, email: email),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: kPrimaryColor,
                                  size: 20,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Payment Method',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w700),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => paymentView(
                                          userName: userName, email: email),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: kPrimaryColor,
                                  size: 20,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Notifications',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w700),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_on_outlined,
                                  color: kPrimaryColor,
                                  size: 20,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Help',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w700),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.help,
                                  color: kPrimaryColor,
                                  size: 20,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Report',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kPrimaryColor),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'More Info',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Privacy Policy',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        const Text(
                          'Terms of Service',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              customTop(
                  )
                  ],
          ),
        ),
      ),
    );
  }
}
