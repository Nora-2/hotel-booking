import 'package:bookly/Features/home/presentation/views/custom_search_box.dart';
import 'package:bookly/Features/home/presentation/views/widgets/topprofile.dart';
import 'package:bookly/Features/home/presentation/views/widgets/viewitems.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MainHomeScreen extends StatefulWidget {
  MainHomeScreen({Key? key}) : super(key: key);
  static String id = 'MainHomeScreen';

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  bool visible1 = true;
  bool visible2 = true;
  @override
  Widget build(BuildContext context) {
    //TextEditingController searchController = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: itemsview(
                    visible1: visible1, size: size, visible2: visible2),
              ),
              topProfile(),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 70,
                ),
                SizedBox(height: size.height * 0.02),
                CustomSearchBox(size: size),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 10),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 0,
                                            blurRadius: 10),
                                      ]),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFC443),
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              spreadRadius: 0,
                                              blurRadius: 10),
                                        ]),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          visible1 = true;
                                          visible2 = true;
                                        });
                                      },
                                      child: Text(
                                        'All',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFC443),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 0,
                                          blurRadius: 10),
                                    ],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        visible1 = true;
                                        visible2 = false;
                                      });
                                    },
                                    child: Text(
                                      'Hotel',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFC443),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 0,
                                            blurRadius: 10),
                                      ]),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        visible1 = false;
                                        visible2 = true;
                                      });
                                    },
                                    child: Text(
                                      'Beach',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              ' Location',
                              style: GoogleFonts.lato().copyWith(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: const Color(0xff870084),
                              ),
                              Text(
                                'Egypt , Cairo',
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: const Color(0xff870084),
                                ),
                              ),
                            ],
                          ),
                           SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Check-in',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: const Color(0xff3C3C43),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month_sharp,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        '20, Jan 2023',
                                        maxLines: 1,
                                        softWrap: false,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(children: [Text('Check-out', style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: const Color(0xff3C3C43),
                                    ),),
                                     SizedBox(height: 10,), Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_sharp,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '27, Jan 2023',
                                    maxLines: 1,
                                    softWrap: false,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),],)
                            ],
                          ),
                           SizedBox(height: 60,),
                          Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFC443),
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 0,
                                            blurRadius: 10),
                                      ]),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Text(
                                      'Search',
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
