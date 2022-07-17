import 'package:bloc/bloc.dart';

class ProfileNavigatorCubit extends Cubit<int> {
  ProfileNavigatorCubit() : super(0);

  void setDetailProfile(int newDetailProfile){
    emit(newDetailProfile);
  }
}
