import 'package:cinetopia_flutter/ui/components/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 26,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset("assets/logo.png"),
            Image.asset("assets/splash.png"),
            const Text(
              "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!",
            ),
            const PrimaryButton(),
          ],
        ),
      ),
    ));
  }
}
