

import 'package:bookly/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly/Features/home/data/models/cubit_home/homecubit_cubit.dart';
import 'package:bookly/Features/home/presentation/views/homelayout.dart';
import 'package:bookly/Features/product_details/presentation/manger/product_details_cubit.dart';
import 'package:bookly/Features/settings/presentation/views/settingscreen.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/product_details/presentation/views/product_details_screen.dart';



void main() {

  runApp(const Hotel());
}

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomecubitCubit()),
         BlocProvider(create: (context) => ProductDetailsCubit()),

      ],
      child: 
      MaterialApp(
      routes: {
       
          HomeLayout.id: (context) => HomeLayout(),
          ProductDetailsScreen.id: (context) => ProductDetailsScreen(),
        SplashScreen.id:(context) => SplashScreen(),
        settingView.id:(context) => settingView(),
        },
        initialRoute: settingView.id,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
        textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      )
    );
  }
}
