
// import 'package:bookly/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly/Features/home/presentation/manger/itemModel.dart';

import 'package:bookly/Features/product_details/presentation/views/product_details_screen.dart';


import 'package:go_router/go_router.dart';



abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
 late Item item;
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  SplashScreen(),
      ),
      GoRoute(
        path: '/productDetails',
        builder: (context, state) =>  ProductDetailsScreen(),
      ),
      
      
      
        
     
    ],
  );
}
