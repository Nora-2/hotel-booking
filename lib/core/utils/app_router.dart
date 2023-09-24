
import 'package:bookly/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly/Features/home/presentation/views/homeScreen.dart';
import 'package:go_router/go_router.dart';



abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainHomeScreen(),
      ),
      
      
        
     
    ],
  );
}
