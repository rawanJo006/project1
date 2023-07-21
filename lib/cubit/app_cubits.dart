import 'package:bloc/bloc.dart';
import 'package:project1/cubit/app_cubit_states.dart';
import 'package:project1/services/data_services.dart';

import '../model/data_model.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}): super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;


  void getData() async {
    try{
      emit(LoadingState());
      places= await data.getInfo();
      // print(data.getInfo());
      // Future.delayed(Duration(seconds: 4) , () {
      emit(LoadedState(places));
      // });

    }catch(e){
      print(e);
    }
  }


  detailPage( DataModel data){
    emit(DetailState(data));

  }


  goHome(){
    emit(LoadedState(places));

  }

  goHome2(){
    emit(WelcomeState());

  }

}