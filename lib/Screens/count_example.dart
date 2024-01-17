import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/count_provider.dart';

class CountWidget extends StatefulWidget {
  const CountWidget({super.key});

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countObjectForTimer = Provider.of<CountClass>(context , listen:false);
    Timer.periodic(Duration(seconds: 1) , (timer){

      countObjectForTimer.setCount();

    });
  }

  @override
  Widget build(BuildContext context) {
    final countObject = Provider.of<CountClass>(context , listen:false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Screen'),
        centerTitle: true,

        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CountClass>(
              builder: (context ,value, child) {
                return Text(value.countGetter.toString(), style:TextStyle(fontSize: 50),);
              }
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countObject.setCount();


        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}