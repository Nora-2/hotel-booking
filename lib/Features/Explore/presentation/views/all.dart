import 'package:bookly/Features/Explore/presentation/views/widgets/customItembuilder.dart';
import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class all extends StatelessWidget {
  all({super.key});

  List<Item> items = [Item(
              image: 'assets/images/Rectangle 8.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 14.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 8.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 14.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 8.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 14.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 8.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night'),Item(
              image: 'assets/images/Rectangle 14.png',
              rate: ' 4.5',
              name: 'Savoy Sharm El Sheikh',
              location: 'Soho Square, Sharm El Sh...',
              price: '60/night')];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => itembuilder(
          viewItem: items[index]),
      itemCount: items.length,
    );
  }
}
