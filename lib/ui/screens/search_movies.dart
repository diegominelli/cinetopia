import 'package:cinetopia_flutter/ui/components/movies_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  const SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
            child: Image.asset(
          "assets/movie.png",
          height: 80,
          width: 80,
        )),
        const SliverToBoxAdapter(child: Text("Filmes populares")),
        const SliverToBoxAdapter(child: TextField()),
        SliverList.builder(
          itemBuilder: (context, index) => const MovieCard(),
          itemCount: 10,
        ),
      ],
    );
  }
}
