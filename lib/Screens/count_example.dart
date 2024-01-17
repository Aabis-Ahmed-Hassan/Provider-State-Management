//main.dart For count_example.dart

// import 'package:flutter/material.dart';
// import 'package:provider_state_management/Provider/count_provider.dart';
// import 'package:provider_state_management/Screens/count_example.dart';
// import 'package:provider/provider.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//
//   int x = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return ChangeNotifierProvider(
//       create: (_)=>CountClass(),
//
//       child: MaterialApp(
//           home:CountWidget()
//         )
//     );
//
//   }
// }



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
