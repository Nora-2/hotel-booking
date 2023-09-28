import 'package:bookly/Features/home/presentation/manger/itemModel.dart';
import 'package:bookly/Features/product_details/presentation/manger/product_details_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsStates>{

  List<Item> favoriteProducts=[];
  bool isFavorite = false;
  int quantity = 1;

  ProductDetailsCubit(): super(ProductDetailsInitialState());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);

  changeFavorites(Item item){
    if(item.isFavorite == false){
      item.isFavorite = !item.isFavorite;
      favoriteProducts.add(item);
    }else{
      item.isFavorite = !item.isFavorite;
      favoriteProducts.remove(item);
    }
    emit(ProductDetailsChangeFavoritesState());
  }

  changeQuantity(int value){
    quantity = value;
    emit(ProductDetailsChangeQuantityState());
  }

}