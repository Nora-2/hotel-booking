import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTabBar extends StatelessWidget {
   CustomTabBar({
    required this.c,
    super.key,

  });
TabController c;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller:c ,
  
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      dividerColor: kPrimaryColor,
     indicator: BoxDecoration(
        color: Color(0xffFFC443),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
         
      labelStyle: TextStyle(
        fontSize: 14,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      
      tabs: [
        Container(height: 30,
        width: 130,
        decoration:
          BoxDecoration(
        color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
        
          child: Tab(
            text: 'ALL',
          ),
        ),
        Container(height: 30,
        width:130,
        decoration:
          BoxDecoration(
        color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
          child: Tab(
            text: 'Hotel',
          ),
        ),
        Container(height: 30,
        width: 130,
        decoration:
          BoxDecoration(
        color:Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
          child: Tab(
            text: 'Beach',
          ),
        ),
      ],
    );
  }
}
