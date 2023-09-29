
import 'package:bookly/Features/Explore/presentation/views/all.dart';
import 'package:bookly/Features/Explore/presentation/views/beach.dart';
import 'package:bookly/Features/Explore/presentation/views/hotel.dart';
import 'package:bookly/Features/Explore/presentation/views/widgets/customsearchwithtabbar.dart';
import 'package:bookly/Features/Explore/presentation/views/widgets/customtop.dart';

import 'package:bookly/core/utils/constants.dart';

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
                            height: size.height * 0.63,
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
              topwidget(size.height *.15,),
              searchandtabbar(size: size, tabcontroller: _tabcontroller),
            ],
          ),
        ),
      ),
    );
  }

}

