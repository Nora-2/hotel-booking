import 'package:bookly/Features/Booking/presentation/views/booking_view_screen.dart';
import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/product_details/presentation/manger/product_details_cubit.dart';
import 'package:bookly/Features/product_details/presentation/manger/product_details_states.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ProductDetailsScreen extends StatefulWidget {
  final Item? item;
  ProductDetailsScreen({Key? key, this.item}) : super(key: key);
  static String id = 'ProductDetailsScreen';
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => ProductDetailsCubit(),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsStates>(
        builder: (context, state) => Scaffold(
            body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          SizedBox(height: 440,),
                          Text(
                            'Popular Amenities',
                            style: GoogleFonts.lato().copyWith(
                                fontSize: 18,
                                color: kPrimaryColor,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  children: [Icon(Icons.sunny), Text('Sunning',style:GoogleFonts.lato().copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600) )]),
                              Column(children: [
                                Icon(Icons.wifi),
                                Text('Free Wifi',style:GoogleFonts.lato().copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600) ,)
                              ]),
                              Column(children: [
                                Icon(Icons.restaurant),
                                Text('Restaurant',style:GoogleFonts.lato().copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600) )
                              ]),
                              Column(children: [
                                Icon(Icons.local_cafe),
                                Text('Cafe',style:GoogleFonts.lato().copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600) )
                              ]),
                              Column(children: [
                                Icon(Icons.celebration_rounded),
                                Text('Party',style:GoogleFonts.lato().copyWith(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600) )
                              ])
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Overview',
                            style: GoogleFonts.lato().copyWith(
                                fontSize: 18,
                                color: kPrimaryColor,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w600),
                          ),
                           SizedBox(
                            height: 30,
                          ),
                          Text(
                            maxLines: 3,
                            'Our hotel is distinguished by the fact that all rooms overlook the Basin. Each room has air conditioning,and there are also double rooms... Read more',
                            style: GoogleFonts.lato().copyWith(
                                fontSize: 14,
                                color: Color(0xff000000),
                                fontFamily: 'Tajawal',
                                ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price',
                                style: GoogleFonts.lato().copyWith(
                                    fontSize: 18,
                                    color: kPrimaryColor,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w600),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.only(right: 10,top:20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                       Text('\$70/night ',style: GoogleFonts.lato().copyWith(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w600),),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                        child: CustomButton(
                                        height:size.height *.05,
                          width:size.width *.4,
                                          onPressed: () {
                                            Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (bookingview())));
                 
                                          },
                                          borderRadius: BorderRadius.circular(25),
                                            backgroundColor: kPrimaryColor,
                                            textColor: Colors.white,
                                            text: 'Book now')),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                          image: DecorationImage(
                              image: AssetImage(
                                widget.item!.image,
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFC443),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                        size: 17,
                                      ))),
                              Text(
                                'Hotel Details',
                                style: GoogleFonts.lato().copyWith(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w600),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFC443),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                    onPressed: () {
                                      ProductDetailsCubit.get(context)
                                          .changeFavorites(widget.item!);
                                    },
                                    icon: widget.item!.isFavorite
                                        ? Icon(
                                            CupertinoIcons.heart_fill,
                                            color: Colors.red,
                                          )
                                        : Icon(
                                            CupertinoIcons.heart,
                                            color: Colors.white,
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 220,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            widget.item!.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Text(
                            widget.item!.location,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Image(
                          width: 40,height: 40,
                              image: AssetImage('assets/images/point.png')),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
        listener: (context, state) {},
      ),
    );
  }

}
