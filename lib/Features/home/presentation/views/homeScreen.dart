import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);
  static String id = 'MainHomeScreen';
  @override
  Widget build(BuildContext context) {
    //TextEditingController searchController = TextEditingController();

    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(
                    height: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                  
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [Text('Popular Hotel',style: GoogleFonts.lato().copyWith(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w600
                                ), ),Text('See All',style: GoogleFonts.lato().copyWith(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontFamily: 'Tajawal',
                                ),)],
                    ),
                  ),

                ],
              )),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hello , Mohamed!',
                            style: GoogleFonts.lato().copyWith(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                          Text(
                            'Egypt , Cairo',
                            style: GoogleFonts.lato().copyWith(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Tajawal',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 270,
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          'assets/images/Ellipse 6.png',
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
              )

              // Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     SizedBox(height: size.height * 0.02),
              //     CustomSearchBox(size: size),

              //    ]
              //           ),
            ],
          ),
        ),
      ),
    );
  }
}
