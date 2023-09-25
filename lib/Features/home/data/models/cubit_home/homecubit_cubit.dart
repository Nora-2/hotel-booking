import 'package:bookly/Features/Explore/presentation/views/exploreView.dart';
import 'package:bookly/Features/Favourite/presentation/views/favouriteScreen.dart';
import 'package:bookly/Features/home/presentation/views/homeScreen.dart';
import 'package:bookly/Features/settings/presentation/views/settingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'homecubit_state.dart';

class HomecubitCubit extends Cubit<HomecubitState> {
  HomecubitCubit() : super(HomecubitInitial());
  static HomecubitCubit get(context) => BlocProvider.of(context);
 
  List<Widget> Screens = [
   MainHomeScreen(), Explore(), favouriteView(),settingView()
  ];
  int indexBottomNavBar = 0;
  void changeIndexBottom(int x) {
    indexBottomNavBar = x;
    emit(BottomNavBarChanged());
  }
}
