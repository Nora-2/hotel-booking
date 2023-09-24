

import 'package:bookly/Features/payment/presentation/views/cash/manger/cash_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CashCubit extends Cubit<CashStates> {
  CashCubit() : super(CashInitialState());

  static CashCubit get(context) => BlocProvider.of(context);

  bool isButtonActive = false;

  void changeButtonState() {
    isButtonActive = !isButtonActive;
    emit(CashChangeButtonState());
  }

  void changeTextButtonColor(){
    isButtonActive = !isButtonActive;
    emit(CashChangeWalletButtonState());
  }
}