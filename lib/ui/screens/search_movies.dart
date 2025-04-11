import 'package:cinetopia_flutter/app/services/search_movies_service.dart';
import 'package:cinetopia_flutter/ui/components/movies_card.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  final SearchPopularMoviesService searchPopularMoviesService =
      SearchPopularMoviesService();

  SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: searchPopularMoviesService.getMovies(),
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
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: MovieCard(),
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
