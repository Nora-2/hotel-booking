import 'package:bookly/Features/Explore/presentation/views/widgets/custom_rating_stars.dart';
import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:flutter/material.dart';

class ItemfavContainer extends StatelessWidget {
  ItemfavContainer({
    Key? key,
    required this.viewItem,
  }) : super(key: key);
  final Item viewItem;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset(
              viewItem.image,
              width: 150,
              height: 170,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                        viewItem.name,
                        style: TextStyle(fontSize: 18,color: Colors.black),
                      ),
                      Row(
                        children: [
              Icon(
                Icons.location_on_outlined,
                color: const Color(0xff870084),
              ),
              Text(
                viewItem.location,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16,
                  color: const Color(0xff870084),
                ),
              ),
                        ],
                      ),
                     Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  CustomRatingStars(),
                  Text('\$ ${viewItem.price}/night ',style: TextStyle(color: Colors.black),),
                ],
              ),
             SizedBox(width: 180,),Icon(Icons.favorite,color: Colors.red,),])
                   ],),
            )
            ],);
  }
}
