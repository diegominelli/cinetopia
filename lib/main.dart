import 'package:flutter/material.dart';

void main() {
  runApp(const Cinetopia());
}

class Cinetopia extends StatelessWidget {
  const Cinetopia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinetopia',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image.asset("assets/logo.png"),
        Image.asset("assets/splash.png"),
        const Text(
          "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!",
        ),
        InkWell(
            onTap: () {},
            child: Ink(
              decoration: BoxDecoration(
                color: const Color(0xFFB370FF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Row(
                children: <Widget>[
                  Text("Quero começar"),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ))
      ],
    ));
  }
}
