import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/app_cubits.dart';
import 'package:project1/services/data_services.dart';
import 'package:project1/cubit/app_cubit_logics.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider<AppCubits>(
      create:(context)=>AppCubits(
        data: DataServices(),
      ),
      child: AppCubitLogics(),
    ),
  ));
}
