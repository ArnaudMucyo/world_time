import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class WorldTime{

  String location;
  String? time;
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {

    try {
      // make request
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //print(data);

      //get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    }
    catch(e) {
      print("Error caught : $e");
      time = 'Could not fetch time, make sure you entered the right timezone';
    }

  }
}