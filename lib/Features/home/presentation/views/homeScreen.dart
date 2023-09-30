import 'package:bookly/Features/Explore/presentation/views/widgets/custom_tab_bar.dart';
import 'package:bookly/Features/home/presentation/views/homeAllTab.dart';
import 'package:bookly/Features/home/presentation/views/homeBeachTab.dart';
import 'package:bookly/Features/home/presentation/views/homeHotelTab.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_search_box.dart';
import 'package:bookly/Features/home/presentation/views/widgets/checkin_out.dart';
import 'package:bookly/Features/home/presentation/views/widgets/customSearchButton.dart';
import 'package:bookly/Features/home/presentation/views/widgets/topprofile.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MainHomeScreen extends StatefulWidget {
  MainHomeScreen({Key? key}) : super(key: key);
  static String id = 'MainHomeScreen';

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                  child: Column(
                    
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height *.25,),
                    DefaultTabController(
                        length: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height *1,
                                child: TabBarView(
                                  controller: _tabcontroller,
                                  children: [
                                    HomeAllTab(),
                                    HomeHotelTab(),
                                    HomeBeachTab(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                  ])),
              topProfile( height:size.height * .4,),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(height: size.height * 0.12),
                CustomSearchBox(size: size),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height:  size.height*.35,
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
                            child: CustomTabBar(
                              c: _tabcontroller,
                            ),
                          ),
                          SizedBox(
                            height: size.height*.01,
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
                            height: size.height*.01,
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
                          SizedBox(
                            height: size.height*.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              checkinout(
                                  titel: 'Check-in', date: '20, Jan 2023'),
                              checkinout(
                                date: '27, Jan 2023',
                                titel: 'Check-out',
                              )
                            ],
                          ),
                          SizedBox(
                           height: size.height*.03,
                          ),
                          custombuttonsearch()
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
