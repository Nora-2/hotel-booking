
import 'package:bookly/Features/Explore/presentation/views/all.dart';
import 'package:bookly/Features/Explore/presentation/views/beach.dart';
import 'package:bookly/Features/Explore/presentation/views/custom_tab_bar.dart';
import 'package:bookly/Features/Explore/presentation/views/hotel.dart';
import 'package:bookly/Features/home/presentation/views/custom_search_box.dart';
import 'package:bookly/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Explore extends StatefulWidget {
  Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _Explore();
}

class _Explore extends State<Explore> with SingleTickerProviderStateMixin {
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DefaultTabController(
                    length: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 210,
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.lato().copyWith(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                          Text(
                            'Egypt , Cairo',
                            style: GoogleFonts.lato().copyWith(
                              fontSize: 20,
                              color: kPrimaryColor,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.5,
                            child: TabBarView(
                              controller: _tabcontroller,
                              children: [
                                all(),
                                hotel(),
                                beach(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          'Explore Now',
                          style: GoogleFonts.lato().copyWith(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Tajawal',
                          ),
                        ),
                      ],
                    ),
                  )),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 60,
                ),
                SizedBox(height: size.height * 0.02),
                CustomSearchBox(size: size),
                SizedBox(
                  height: 10,
                ),
                CustomTabBar(
                  c: _tabcontroller,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
