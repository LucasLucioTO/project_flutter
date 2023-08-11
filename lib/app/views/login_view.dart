import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = '';
  String password = '';
  String backgroundColor = '';

  @override
  Scaffold build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        loginPageBody(width, height, context),
      ]),
    );
  }

  SingleChildScrollView loginPageBody(
      double width, double height, BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  user = text;
                },
                decoration: const InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              OutlinedButton(
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  backgroundColor: MaterialStatePropertyAll(Colors.cyan),
                ),
                child: const Text('entrar'),
                onPressed: () {
                  //if (user == 'lucioandaime' && password == 'lucio0415') {
                  Navigator.of(context).pushReplacementNamed('/home');
                  //} else {
                  //  print('invalido');
                  //}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
