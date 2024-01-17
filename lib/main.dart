//For count_example.dart

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






import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/my_provider_class.dart';
import 'package:provider_state_management/Screens/my_provider_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (_)=>MyProviderClass(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
      home: MyProviderScreen()
      ),
    );


  }
}


