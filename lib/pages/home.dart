import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
          child:
          Column(
            children:  [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900]
                ),
                  onPressed: (){
                  Navigator.pushNamed(context, '/location');
                  },
                  child: const Text(
                      'Choose location',
                  )

              )
            ],
          )
      ),
    );
  }
}
