import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/count_provider.dart';
import 'package:provider_state_management/Provider/dark_mode_class.dart';
import 'package:provider_state_management/Provider/favourite_class.dart';
import 'package:provider_state_management/Provider/login_api_class.dart';
import 'package:provider_state_management/Provider/my_provider_class.dart';
import 'package:provider_state_management/Provider/my_slider_screen.dart';
import 'package:provider_state_management/Screens/dark_mode_screen.dart';
import 'package:provider_state_management/Screens/favourite_screen.dart';
import 'package:provider_state_management/Screens/login_api_screen.dart';
import 'package:provider_state_management/Screens/my_provider_screen.dart';
import 'package:provider_state_management/Screens/my_slider_screen.dart';
import 'package:provider_state_management/Screens/stateless_as_stateful.dart';

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
            create: (_) => CountClass(),
          ),
          ChangeNotifierProvider(
            create: (_) => MyProviderClass(),
          ),
          ChangeNotifierProvider(
            create: (_) => MySliderClass(),
          ),
          ChangeNotifierProvider(create: (_) => FavouriteClass()),
          ChangeNotifierProvider(
            create: (_) => DarkModeClass(),
          ),





          ChangeNotifierProvider(
            create:(_)=>LoginApiClass(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          final darkModeProvider = Provider.of<DarkModeClass>(context);

          return MaterialApp(

            theme:ThemeData(
              primarySwatch: Colors.red,
            ),

            debugShowCheckedModeBanner: false,


            home: LoginApiWidget(),
          );
        }));
  }
}
