import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/login_api_class.dart';

class LoginApiWidget extends StatefulWidget {
  const LoginApiWidget({super.key});

  @override
  State<LoginApiWidget> createState() => _LoginApiWidgetState();
}

class _LoginApiWidgetState extends State<LoginApiWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<LoginApiClass>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Login Screen'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {

                  myProvider.login(emailController.text.toString(),
                      passwordController.text.toString());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: myProvider.getLoading
                        ? CircularProgressIndicator()
                        : Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
