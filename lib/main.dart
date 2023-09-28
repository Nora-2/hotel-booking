import 'package:bookly/Features/Booking/presentation/views/bookingPayment_screen.dart';
import 'package:bookly/Features/Booking/presentation/views/booking_view_screen.dart';
import 'package:bookly/Features/Booking/presentation/views/bookingUserInfo_screen.dart';
import 'package:bookly/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly/Features/home/data/models/cubit_home/homecubit_cubit.dart';
import 'package:bookly/Features/home/presentation/views/homelayout.dart';
import 'package:bookly/Features/payment/presentation/views/paymentView.dart';
import 'package:bookly/Features/product_details/presentation/manger/product_details_cubit.dart';
import 'package:bookly/Features/profile/presentation/views/widgets/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/product_details/presentation/views/product_details_screen.dart';

void main() {
  runApp(const Hotel());
}

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomecubitCubit()),
          BlocProvider(create: (context) => ProductDetailsCubit()),
        ],
        child: MaterialApp(
          routes: {
            HomeLayout.id: (context) => const HomeLayout(),
            ProductDetailsScreen.id: (context) => ProductDetailsScreen(),
            SplashScreen.id: (context) => const SplashScreen(),
            ProfileView.id: (context) => const ProfileView(),
            paymentView.id: (context) => const paymentView(),
            bookingUserInfo.id:(context) =>const bookingUserInfo(),
            bookingview.id: (context) => const bookingview(),
            bookingPyment.id:(context) => const bookingPyment()


          },
          initialRoute: SplashScreen.id,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ));

  }
}
