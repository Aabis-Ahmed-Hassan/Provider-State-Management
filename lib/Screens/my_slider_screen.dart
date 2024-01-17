
// main.dart code  for my_slider_screen.dart
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_state_management/Provider/count_provider.dart';
// import 'package:provider_state_management/Provider/my_provider_class.dart';
// import 'package:provider_state_management/Provider/my_slider_screen.dart';
// import 'package:provider_state_management/Screens/my_provider_screen.dart';
// import 'package:provider_state_management/Screens/my_slider_screen.dart';
//
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
//     return ChangeNotifierProvider(
//       create:(_)=>MyScrollBarClass(),
//       child: MaterialApp(
//         home:MyScrollBarWidget(),
//       ),
//     );
//
//
//   }
// }



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/my_slider_screen.dart';

class MySliderWidget extends StatefulWidget {
  const MySliderWidget({super.key});

  @override
  State<MySliderWidget> createState() => _MySliderWidgetState();
}

class _MySliderWidgetState extends State<MySliderWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('My Scroll Bar Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<MySliderClass>(builder: (context, value, child) {
                  return Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: value.getValue*100,
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(value.getValue),
                        ),
                        child: const Center(
                          child: Text('Container 1'),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        height: value.getValue*100,
                        decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(value.getValue),
                        ),
                        child: const Center(
                          child: Text(
                            'Container 2',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                    ],
                  );
                }),
                Consumer<MySliderClass>(
                  builder: (context, value, child) {
                    return Slider(
                      value: value.getValue,
                      onChanged: (currentValue) {
                        value.setValue(currentValue);
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
