import 'package:bookly/Features/Explore/presentation/views/widgets/custom_rating_stars.dart';
import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/product_details/presentation/views/product_details_screen.dart';
import 'package:flutter/material.dart';

class itembuilder extends StatelessWidget {
  itembuilder({
    Key? key,
    required this.viewItem,
  }) : super(key: key);
  final Item viewItem;
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:()=> Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    item: viewItem,
                  ),
                ),
              ),
      child: Container(
width: double.infinity,
        child: Row(mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [Image.asset(
                  viewItem.image,
                 width: size.width*.4,
                  height: size.height*.15,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Container(
                      width: size.width*.5,
                      child: Text(
                              viewItem.name,
                              maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18,color: Colors.black),
                            ),
                    ),
                          Row(
                            children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: const Color(0xff870084),
                  ),
                  Container(
                    width: size.width*.3,
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
                          CustomRatingStars(),
                          Text('\$ ${viewItem.price}/night ',style: TextStyle(color: Colors.black),),
                       ],),
                )
                ],),
      ),
    );
  }
}
