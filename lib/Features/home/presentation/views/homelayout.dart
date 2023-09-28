import 'package:bookly/Features/home/data/models/cubit_home/homecubit_cubit.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static String id = 'HomeLayout';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomecubitCubit(),
      child: BlocConsumer<HomecubitCubit, HomecubitState>(
        builder: (context, state) => Scaffold(
            backgroundColor: Colors.white,
            body: HomecubitCubit.get(context)
                .Screens[HomecubitCubit.get(context).indexBottomNavBar],
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 0, blurRadius: 10),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: BottomNavyBar(
                      curve: Curves.easeIn,
                      selectedIndex:
                          HomecubitCubit.get(context).indexBottomNavBar,
                      showElevation: true,
                      onItemSelected: (index) =>
                          HomecubitCubit.get(context).changeIndexBottom(index),
                      items: [
                        BottomNavyBarItem(
                            icon: const Icon(
                              CupertinoIcons.home,
                            ),
                            title: Text(
                              'Home',
                            ),
                            activeColor: kPrimaryColor,
                            inactiveColor: Colors.grey),
                        BottomNavyBarItem(
                            icon: Icon(Icons.explore),
                            title: Text("Explore"),
                            activeColor: kPrimaryColor,
                            inactiveColor: Colors.grey),
                        BottomNavyBarItem(
                            icon: const Icon(CupertinoIcons.heart),
                            title: Text("Favorite"),
                            activeColor: kPrimaryColor,
                            inactiveColor: Colors.grey),
                        BottomNavyBarItem(
                            icon: Icon(Icons.settings),
                            title: Text('Settings'),
                            activeColor: kPrimaryColor,
                            inactiveColor: Colors.grey),
                      ],
                    ),
                  )),
            )),
        listener: (context, state) {},
      ),
    );
  }
}
