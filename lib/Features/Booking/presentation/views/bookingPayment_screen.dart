import 'package:bookly/Features/home/presentation/views/homelayout.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/function/custom_snack_bar.dart';
import 'package:bookly/core/widgets/customTop.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class bookingPyment extends StatefulWidget {
  const bookingPyment({
    super.key,
  });

  @override
  State<bookingPyment> createState() => _bookingPymentState();
  static String id = 'bookingpayment';
}

List<String> _locations = ['Single', 'Double']; // Option 2
// String _selectedLocation;
int numofrooms = 1;
int numofguest = 1;
DateTime? startdate;
DateTime? enddate;

class _bookingPymentState extends State<bookingPyment> {
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My Card',
                                style: GoogleFonts.lato().copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Tajawal',
                                )),
                            Text('Edit Card',
                                style: GoogleFonts.lato().copyWith(
                                  fontSize: 16,
                                  color: Color(0xffBF9200),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Tajawal',
                                ))
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/download.jpeg'),
                            width: 400,
                            height: 240,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Other Payment Method',
                              style: GoogleFonts.lato().copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Tajawal',
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 370,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 224, 146, 223)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/download__1_-removebg-preview 2.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('New credit/Debit Card',
                                  style: GoogleFonts.lato().copyWith(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Tajawal',
                                  )),
                              Spacer(),
                              CircleAvatar(
                                  radius: 11,
                                  backgroundColor: kPrimaryColor,
                                  child: CircleAvatar(
                                    radius: 9,
                                    backgroundColor: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 370,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 224, 146, 223)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/download-removebg-preview (1) 2.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Paypal',
                                  style: GoogleFonts.lato().copyWith(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Tajawal',
                                  )),
                              Spacer(),
                              CircleAvatar(
                                  radius: 11,
                                  backgroundColor: kPrimaryColor,
                                  child: CircleAvatar(
                                    radius: 9,
                                    backgroundColor: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 110),
                        child: Container(
                          width: 300,
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
                              customSnackBar(context,
                                  text: 'payment Done Successfully',
                                  action: SnackBarAction(
                                    textColor: Colors.white,
                                      label: 'ok',
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    (HomeLayout())));
                                      }));
                            },
                            child: Text(
                              'Pay',
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
