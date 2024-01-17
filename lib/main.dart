import 'package:flutter/material.dart';
import 'package:provider_state_management/Provider/count_provider.dart';
import 'package:provider_state_management/Screens/count_example.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int x = 0;

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (_)=>CountClass(),

      child: MaterialApp(
          home:CountWidget()
        )
    );

  }
}
