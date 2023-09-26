import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/home/presentation/views/widgets/customItemContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class itemsview extends StatelessWidget {
  const itemsview({
    super.key,
    required this.visible1,
    required this.size,
    required this.visible2,
  });

  final bool visible1;
  final Size size;
  final bool visible2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 450,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Visibility(
            visible: visible1,
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
        ),
        Visibility(
          visible: visible1,
          child: SizedBox(
            height: size.height * 0.44,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                children: [
                  ItemContainer(
                      viewItem: Item(
                          image: 'assets/images/Rectangle 8.png',
                          rate: ' 4.5',
                          name: 'Savoy Sharm El Sheikh',
                          location: 'Soho Square, Sharm El Sheikh Egypt',
                          price: '60/night'))
                ],
              ),
              itemCount: 6,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Visibility(
            visible: visible2,
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
        ),
        Visibility(
          visible: visible2,
          child: SizedBox(
            height: size.height * 0.40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                children: [
                  ItemContainer(
                      viewItem: Item(
                          image: 'assets/images/Rectangle 14.png',
                          rate: ' 4.5',
                          name: 'SUNRISE Diamond Bea...',
                          location: '30 Salah Taher St Ras',
                          price: '60/night'))
                ],
              ),
              itemCount: 6,
            ),
          ),
        )
      ],
    );
  }
}
