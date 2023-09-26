
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class checkinout extends StatelessWidget {
  checkinout({
    required this.titel,
    required this.date,
    super.key,
  });
  
  String titel;
  String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${titel}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: const Color(0xff3C3C43),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_month_sharp,
              color: Colors.black,
            ),
            Text(
              '${date}',
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
