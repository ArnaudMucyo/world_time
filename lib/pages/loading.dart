import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../services/WorldTime.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

 void setWorldTime () async {
   WorldTime instance = WorldTime(location: 'Germany', flag: 'germany.png', url: 'Afi');
   await instance.getTime();
   print(instance.time);
   setState(() {
     time = instance.time.toString();
   });
 }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Text(
              time,
            style:  TextStyle(
              color: Colors.blue[800]
            ),
          )),
    );
  }
}
