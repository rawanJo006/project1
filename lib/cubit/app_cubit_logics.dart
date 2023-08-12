import 'package:project1/cubit/app_cubit_states.dart';
import 'package:project1/cubit/app_cubits.dart';
import 'package:project1/Pages/main_page.dart';
import 'package:project1/Pages/map_user.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/Pages/most_liked.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AppCubits , CubitStates>(
            builder: (context , state){
              if(state is WelcomeState){
                return MainPage();
                // return WelcomePage();
              }else if(state is LoadingState){
                return Center(child: CircularProgressIndicator(),);
              }else if(state is LoadedState){
                return MainPage();
              // }else if(state is DetailState){
              //   return DetailPage();
              }else{
                return Container();

              }

            }
        )
    );
  }
}
