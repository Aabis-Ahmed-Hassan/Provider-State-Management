import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/count_provider.dart';
import 'package:provider_state_management/Provider/my_provider_class.dart';
import 'package:provider_state_management/Provider/my_slider_screen.dart';
import 'package:provider_state_management/Screens/my_provider_screen.dart';
import 'package:provider_state_management/Screens/my_slider_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_)=>CountClass(),

        ),
        ChangeNotifierProvider(
          create: (_)=>MyProviderClass(),

        ),
        ChangeNotifierProvider(
          create: (_)=>MySliderClass(),

        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MySliderWidget(),
      ),
    );



  }
}
