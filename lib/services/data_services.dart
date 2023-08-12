import 'dart:convert';

import 'package:project1/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices{
  // String baseUrl = "http://mark.bslmeiyu.com/api";
  String baseUrl = "http://localhost/project/c3/index.php/welcome";


  Future<List<DataModel>> getInfo() async{
    var apiUrl ='/get_data';
    // var apiUrl ='/getplaces';

    http.Response res = await http.get(Uri.parse(baseUrl+apiUrl));
    try{
      if(res.statusCode ==200){
        List<dynamic> list = json.decode(res.body);
        // print(list);
        // print(list.map((e) => DataModel.fromJson(e)).toList());
        return list.map((e) => DataModel.fromJson(e)).toList();
      }else{
        return <DataModel>[];
      }
    }catch(e){
      print(e);
      return <DataModel>[];

    }
  }



}