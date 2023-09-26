import 'package:flutter/material.dart';

class Item {
  final String image;
  final String rate;
  final String name;
  final String location;
  final String price;
  Icon? fav;
  bool isFavorite = false;

  Item(
      {this.fav,
      
      required this.image,
      required this.rate,
      required this.name,
      required this.location,
      required this.price});
}
