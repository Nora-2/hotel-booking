import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/home/presentation/views/widgets/customItemContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomeBeachTab extends StatelessWidget {
  HomeBeachTab({super.key});
 List<Item> items = [
    Item(
        image: 'assets/images/Rectangle 14.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sheikh Egypt',
              price: '60/night'),
    Item(
        image: 'assets/images/Rectangle 14 (3).png',
        rate: ' 4.5',
        name: 'Savoy Sharm El Sheikh',
        location: 'Soho Square, Sharm El Sheikh Egypt',
        price: '60/night'),Item(
        image: 'assets/images/Rectangle 14 (2).png',
        rate: ' 4.5',
        name: 'Savoy Sharm El Sheikh',
        location: 'Soho Square, Sharm El Sheikh Egypt',
        price: '60/night'),
    Item(
        image: 'assets/images/Rectangle 14.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sheikh Egypt',
              price: '60/night'),
    Item(
        image: 'assets/images/Rectangle 14 (3).png',
        rate: ' 4.5',
        name: 'Savoy Sharm El Sheikh',
        location: 'Soho Square, Sharm El Sheikh Egypt',
        price: '60/night'),Item(
        image: 'assets/images/Rectangle 14 (2).png',
        rate: ' 4.5',
        name: 'Savoy Sharm El Sheikh',
        location: 'Soho Square, Sharm El Sheikh Egypt',
        price: '60/night'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 450,
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
          height: size.height * 0.40,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                ItemContainer(
                    viewItem: items[index])
              ],
            ),
            itemCount: items.length,
          ),
        )
      ],
    );
  }
}