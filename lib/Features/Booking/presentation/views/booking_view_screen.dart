import 'package:bookly/Features/Booking/presentation/views/bookingUserInfo_screen.dart';

import 'package:bookly/Features/Booking/presentation/views/widgets/customdatarangePacker.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/customTop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class bookingview extends StatefulWidget {
  const bookingview({
    super.key,
  });

  @override
  State<bookingview> createState() => _bookingviewState();
  static String id = 'bookingview';
}

List<String> _locations = ['Single', 'Double']; // Option 2
// String _selectedLocation;
int numofrooms = 1;
int numofguest = 1;
DateTime? startdate;
DateTime? enddate;

class _bookingviewState extends State<bookingview> {
  @override
  Widget build(BuildContext context) {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Select Date',
                            style: GoogleFonts.lato().copyWith(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                        ),
                        Container(
                          height: 571,
                          width: 500,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: CustomDateRangePicker(
                              primaryColor: kPrimaryColor,
                              backgroundColor: Colors.white,
                              maximumDate:
                                  DateTime.now().add(const Duration(days: 50)),
                              minimumDate: DateTime.now()
                                  .subtract(const Duration(days: 50)),
                              onApplyClick: (s, e) {
                                setState(() {
                                  enddate = e;
                                  startdate = s;
                                });
                              },
                              onCancelClick: () {
                                setState(() {
                                  enddate = null;
                                  startdate = null;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Check In',
                                    style: GoogleFonts.lato().copyWith(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Apr  11',
                                            style: GoogleFonts.lato().copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Check out',
                                    style: GoogleFonts.lato().copyWith(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Apr  14',
                                            style: GoogleFonts.lato().copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                          Icon(
                                            Icons.calendar_today,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Room Type',
                                    style: GoogleFonts.lato().copyWith(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Double',
                                            style: GoogleFonts.lato().copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Number of rooms',
                                    style: GoogleFonts.lato().copyWith(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                numofrooms++;
                                              });
                                            },
                                            child: Container(
                                                 child: Text(
                                                '+',
                                                style: GoogleFonts.lato().copyWith(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Tajawal',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '${numofrooms}',
                                            style: GoogleFonts.lato().copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                numofrooms--;
                                              });
                                            },
                                            child: Container(
                                               child: Text(
                                                '-',
                                                style:
                                                    GoogleFonts.lato().copyWith(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Tajawal',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Center(
                         
                          child: Column(
                            children: [
                              Text(
                                'Guest',
                                style: GoogleFonts.lato().copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 150,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kPrimaryColor),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                       GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                numofguest++;
                                              });
                                            },
                                            child: Container(
                                               child: Text(
                                                '+',
                                                style: GoogleFonts.lato().copyWith(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Tajawal',
                                                ),
                                              ),
                                            ),
                                          ),
                                      Text(
                                        '${numofguest}',
                                        style: GoogleFonts.lato().copyWith(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Tajawal',
                                        ),
                                      ),
                                       GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                numofguest--;
                                              });
                                            },
                                            child: Container(
                                             child: Text(
                                                '-',
                                                style: GoogleFonts.lato().copyWith(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Tajawal',
                                                ),
                                              ),
                                            ),
                                          ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total: 10/night',
                                style: GoogleFonts.lato().copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                              Container(
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
                        MaterialPageRoute(builder: (context) => (bookingUserInfo())));
                 },
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )
                  ],
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
