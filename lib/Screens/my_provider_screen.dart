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
