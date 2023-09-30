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
      Size size = MediaQuery.of(context).size;
    return Row(mainAxisAlignment:MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset(
              viewItem.image,
              width: 170,
              height: 120,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Container(
                   width: size.width*.5,
                  child: Text(
                     maxLines: 1,
                          viewItem.name,
                          style: TextStyle(overflow: TextOverflow.ellipsis,fontSize: 18,color: Colors.black),
                        ),
                ),
                      Row(
                        children: [
              Icon(
                Icons.location_on_outlined,
                color: const Color(0xff870084),
              ),
              Container( width: size.width*.3,
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
                     Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  CustomRatingStars(),
                  Text('\$ ${viewItem.price}/night ',style: TextStyle(color: Colors.black),),
                ],
              ),
             SizedBox(width: size.width *.08,),
          
            Icon(Icons.favorite,color: Colors.red,),])
                   ],),
            )
            ],);
  }
}
