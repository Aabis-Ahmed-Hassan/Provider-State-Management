// main.dart for my_provider_screen.dart
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_state_management/Provider/my_provider_class.dart';
// import 'package:provider_state_management/Screens/my_provider_screen.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return ChangeNotifierProvider(
//       create: (_)=>MyProviderClass(),
//       child: MaterialApp(
//
//           debugShowCheckedModeBanner: false,
//           home: MyProviderScreen()
//       ),
//     );
//
//
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/my_provider_class.dart';

class MyProviderScreen extends StatefulWidget {
  const MyProviderScreen({super.key});

  @override
  State<MyProviderScreen> createState() => _MyProviderScreenState();
}

class _MyProviderScreenState extends State<MyProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final myProviderObject =
        Provider.of<MyProviderClass>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('My Provider Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<MyProviderClass>(builder: (context, value, child) {
              return Text(
                value.getX.toString(),
                style: TextStyle(fontSize: 50),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myProviderObject.setX();
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
