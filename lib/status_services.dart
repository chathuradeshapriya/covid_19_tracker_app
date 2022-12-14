import 'dart:convert';

import 'package:covid_tracker_app/app_url.dart';
import 'package:http/http.dart' as http;
import 'WorldStatusModel.dart';



class StatusService{
  Future<WorldStatusModel> fetchWorldStatusRecords () async {
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return WorldStatusModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
    }


  Future<List<dynamic>> countriesListApi () async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.contriestList));

    if(response.statusCode == 200){
      data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Error');
    }
  }
  }
