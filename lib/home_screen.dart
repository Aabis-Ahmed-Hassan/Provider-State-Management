import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 0;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds:1), (timer) {
      x++;
      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.teal,),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text(DateTime.now().hour.toString() + ':' + DateTime.now().minute.toString() + ':' + DateTime.now().second.toString() , style:TextStyle(fontSize: 30),),
          Center(child: Text(x.toString() , style:TextStyle(fontSize: 30),),)
        ],
      )
    );
  }
}
