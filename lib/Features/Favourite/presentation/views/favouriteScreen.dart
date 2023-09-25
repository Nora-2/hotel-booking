

import 'package:bookly/Features/Favourite/presentation/views/widgets/custom%20favbuilder.dart';
import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/home/presentation/views/custom_search_box.dart';
import 'package:bookly/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class favouriteView extends StatefulWidget {
  favouriteView({Key? key}) : super(key: key);

  @override
  State<favouriteView> createState() => _favouriteView();
}

class _favouriteView extends State<favouriteView> with SingleTickerProviderStateMixin {
 
  @override
  void initState() {
    super.initState();
    
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
                  SizedBox(height: 150,),
                  SizedBox(
                     height: size.height * 0.682,
                    child: ListView.builder(
                        shrinkWrap: true,
                       
                        itemBuilder: (context, index) => ItemfavContainer(
                            viewItem: Item(
                                image: 'assets/images/Rectangle 14.png',
                                rate: ' 4.5',
                                name: 'Savoy Sharm El Sheikh',
                                location: 'Soho Square, Sharm El Sh...',
                                price: '60/night')),
                        itemCount: 6,
                      ),
                  ),
                ],
              ),
              Container(
                  height: 150,
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
                          'Favorite',
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
                )
                
              ,
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
