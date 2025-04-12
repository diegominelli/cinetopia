import 'package:cinetopia_flutter/app/viewmodels/search_movies_viewmodel.dart';
import 'package:cinetopia_flutter/ui/components/movies_card.dart';
import 'package:cinetopia_flutter/ui/screens/movie_details.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatefulWidget {
  const SearchMovies({super.key});

  @override
  State<SearchMovies> createState() => _SearchMoviesState();
}

class _SearchMoviesState extends State<SearchMovies> {
  final SearchMoviesViewmodel viewmodel = SearchMoviesViewmodel();

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: viewmodel.getMovie(textController.text),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                  child: Image.asset(
                "assets/popular.png",
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
                  controller: textController,
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: "Pesquisar",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              )),
              SliverList.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetails(
                              movie: viewmodel.moviesList[index]))),
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: MovieCard(
                        movie: viewmodel.moviesList[index],
                      )),
                ),
                itemCount: viewmodel.moviesList.length,
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
