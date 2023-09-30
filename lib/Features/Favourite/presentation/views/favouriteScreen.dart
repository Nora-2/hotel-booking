import 'package:bookly/Features/Favourite/presentation/views/widgets/custom%20favbuilder.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_search_box.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class favouriteView extends StatefulWidget {
  favouriteView({Key? key}) : super(key: key);

  @override
  State<favouriteView> createState() => _favouriteView();
}

class _favouriteView extends State<favouriteView>
    with SingleTickerProviderStateMixin {
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
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.25,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: size.height * 1.2,
                      width: double.infinity,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: ItemfavContainer(
                              viewItem: dataprovider.favourite[index]),
                        ),
                        itemCount: dataprovider.favourite.length,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Favorite',
                        style: GoogleFonts.lato().copyWith(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Tajawal',
                        ),
                      ),
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
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
