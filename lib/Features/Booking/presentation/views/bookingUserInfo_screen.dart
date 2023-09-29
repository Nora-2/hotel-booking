import 'package:bookly/Features/Booking/presentation/views/bookingPayment_screen.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/customTop.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class bookingUserInfo extends StatefulWidget {
  const bookingUserInfo({
    super.key,
  });

  @override
  State<bookingUserInfo> createState() => _bookingUserInfoState();
  static String id = 'bookinginfouser';
}

List<String> _locations = ['Single', 'Double']; // Option 2
// String _selectedLocation;
int numofrooms = 1;
int numofguest = 1;
DateTime? startdate;
DateTime? enddate;

class _bookingUserInfoState extends State<bookingUserInfo> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Booking',
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
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                
                      SizedBox(
                        height: 100,
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
                        child: CustomTextFieldsetting(Hint: 'Mohamed@gmail.com'),
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
                          preicon: Image(image: AssetImage('assets/images/Group 16678.png')),
                          Hint: '+ 20 10222564 ',
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomText(text: 'Kindly upload any valid ID',color: Colors.black,),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          height: 40,
                          child: CustomTextFieldsetting(
                            Hint: 'Click Here to Upload',
                            preicon: Icon(
                              Icons.cloud_upload,
                              color: kPrimaryColor,
                              size: 30,
                            ),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 110),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFFC443),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0,
                                    blurRadius: 10),
                              ]),
                          child: TextButton(
                            onPressed: () {
                             Navigator.push(context,
                            MaterialPageRoute(builder: (context) => (bookingPyment())));
                                       },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              customTop()
            ],
          ),
        ),
      ),
    );
  }
}
