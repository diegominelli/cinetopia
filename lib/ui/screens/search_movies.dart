import 'package:cinetopia_flutter/app/viewmodels/search_movies_viewmodel.dart';
import 'package:cinetopia_flutter/ui/components/movies_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  final SearchMoviesViewmodel viewmodel = SearchMoviesViewmodel();

  SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: viewmodel.getPopularMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                  child: Image.asset(
                "assets/movie.png",
                height: 80,
                width: 80,
              )),
              const SliverToBoxAdapter(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  "Filmes populares",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              )),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Pesquisar",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              )),
              SliverList.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: MovieCard(
                    movie: viewmodel.moviesList[index],
                  ),
                ),
                itemCount: 10,
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
