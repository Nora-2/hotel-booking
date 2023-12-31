import 'package:bookly/Features/home/presentation/views/widgets/customItemContainer.dart';
import 'package:bookly/core/widgets/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomeAllTab extends StatelessWidget {
  HomeAllTab({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height*.3,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Hotel',
                style: GoogleFonts.lato().copyWith(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'See All',
                style: GoogleFonts.lato().copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Tajawal',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.3,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                ItemContainer(
                    viewItem: dataprovider.Hotel[index])
              ],
            ),
            itemCount:dataprovider.Hotel.length,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Beach',
                style: GoogleFonts.lato().copyWith(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'See All',
                style: GoogleFonts.lato().copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Tajawal',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.3,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                ItemContainer(
                    viewItem: dataprovider.Beach[index])
              ],
            ),
            itemCount: dataprovider.Beach.length,
          ),
        )
      ],
    );
  }

}