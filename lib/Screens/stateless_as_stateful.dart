import 'package:flutter/material.dart';

class StatelessAsStateful extends StatelessWidget {
  StatelessAsStateful({super.key});

  ValueNotifier myNotifier = ValueNotifier(0);

  ValueNotifier showPassword = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: showPassword,
                builder: (context, value, child) {
                  return TextFormField(
                    obscureText: showPassword.value,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          showPassword.value = !showPassword.value;
                        },
                        icon: showPassword.value
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ValueListenableBuilder(
                  valueListenable: myNotifier,
                  builder: (context, value, child) {
                    return Text(
                      myNotifier.value.toString(),
                      style: const TextStyle(fontSize: 50),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          myNotifier.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
