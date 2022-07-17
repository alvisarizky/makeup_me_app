import 'package:bloc/bloc.dart';

class MuaDetailCubit extends Cubit<int> {
  MuaDetailCubit() : super(0);

  void setMuaDetail(int newMuaDetail) {
    emit(newMuaDetail);
  }
}
