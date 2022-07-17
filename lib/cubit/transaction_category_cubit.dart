import 'package:bloc/bloc.dart';

class TransactionCategoryCubit extends Cubit<int> {
  TransactionCategoryCubit() : super(0);

  void setOrderCategory(int newOrderCategory){
    emit(newOrderCategory);
  }
}
