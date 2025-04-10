import 'package:cinetopia_flutter/ui/components/movies_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MovieCard(),
      ),
    );
  }
}
