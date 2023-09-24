
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RootScreen extends StatefulWidget {
  const RootScreen({super.key, });
  // final int index;
  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with WidgetsBindingObserver {

  // late PageController pageController =
  //     PageController(initialPage: slectedIndex, keepPage: true);
  // @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Colors.white,
      // body: PageView(
      //   physics:ScrollPhysics(),
      //   controller: pageController,
      //   children: const [homeView(), exploreView(), favouriteView(),settingView()],
      //   onPageChanged: (value) {
      //     setState(() {
      //       slectedIndex = value;
      //     });
      //   },
      // ),
      // bottomNavigationBar: BottomNavyBar(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   curve: Curves.easeInOut,
      //   selectedIndex: slectedIndex,
      //   items: [
      //     BottomNavyBarItem(
      //         activeColor: kPrimaryColor,
      //         textAlign: TextAlign.center,
      //         inactiveColor: Colors.black,
      //         icon: const Icon(
      //           CupertinoIcons.home,
      //         ),
      //         title: Text(
      //           "Home",
      //           style: GoogleFonts.lato().copyWith(fontSize: 20, color: Colors.black, fontFamily: 'Tajawal',),
      //         )),
      //     BottomNavyBarItem(
      //         activeColor: kPrimaryColor,
      //         textAlign: TextAlign.center,
      //         inactiveColor:  Colors.black,
      //         icon: const Icon(
      //           CupertinoIcons.chart_pie,
      //         ),
      //         title: Text(
      //           "Explore",
      //           style: GoogleFonts.lato().copyWith(fontSize: 20, color:Colors.white, fontFamily: 'Tajawal',),
      //         )),
      //     BottomNavyBarItem(
      //         activeColor: kPrimaryColor,
      //         inactiveColor:  Colors.black,
      //         textAlign: TextAlign.center,
      //         icon: const Icon(CupertinoIcons.heart),
      //         title: Text(
      //           "Favorite",
      //           style:GoogleFonts.lato().copyWith(fontSize: 20, color: Colors.white, fontFamily: 'Tajawal',),
      //         )),
      //         BottomNavyBarItem(
      //         activeColor: kPrimaryColor,
      //         inactiveColor:  Colors.black,
      //         textAlign: TextAlign.center,
      //         icon: const Icon(CupertinoIcons.settings_solid),
      //         title: Text(
      //           "Settings",
      //           style:GoogleFonts.lato().copyWith(fontSize: 20, color: Colors.white, fontFamily: 'Tajawal',),
      //         )),
      //   ],
      //   onItemSelected: (value) {
      //     setState(() {
      //       slectedIndex = value;
      //       pageController.jumpToPage(slectedIndex);
      //     });
      //   },
      // ),
    );
  }
}
