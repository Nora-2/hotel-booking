import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class topProfile extends StatelessWidget {
  const topProfile({
    required this.height,
    
    super.key,
  });
 final double? height;

  @override
  Widget build(BuildContext context) {
      // Size size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Hello , Mohamed!',
                  style: GoogleFonts.lato().copyWith(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                  ),
                ),
                Text(
                  'Egypt , Cairo',
                  style: GoogleFonts.lato().copyWith(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                  ),
                )
              ],
            ),
            
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Image.asset(
                'assets/images/Ellipse 6.png',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}