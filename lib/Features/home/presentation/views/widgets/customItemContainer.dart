import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/product_details/presentation/views/product_details_screen.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  ItemContainer({
    Key? key,
    required this.viewItem,
  }) : super(key: key);
  final Item viewItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap:()=> Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    item: viewItem,
                  ),
                ),
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  viewItem.image,
                  width: 200,
                  height: 120,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 50,
                    height: 22,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.star,
                            color: Color(0xffFFD700),
                            size: 15,
                          ),
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              viewItem.name,
              style: TextStyle(fontSize: 18,color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: const Color(0xff870084),
                ),
                Container(width: 180,
                  child: Text(
                    viewItem.location,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                     overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                      color: const Color(0xff870084),
                    ),
                  ),
                ),
              ],
            ),
            Text('\$ ${viewItem.price}/night ',style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
