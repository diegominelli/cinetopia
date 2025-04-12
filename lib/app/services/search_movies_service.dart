import 'dart:convert';
import 'package:cinetopia_flutter/app/helpers/consts.dart';
import 'package:cinetopia_flutter/app/models/movie.dart';
import 'package:http/http.dart' as http;

abstract class SearchMoviesService {
  Future<List<Movie>> getMovies();
}

class SearchPopularMoviesService implements SearchMoviesService {
  List<Movie> movies = <Movie>[];

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse(popularMoviesUrl),
        headers: resquestHeader,
      );
      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)['results']) {
          movies.add(Movie.fromMap(movie));
        }
      } else {
        throw Exception(response.body);
      }
      return movies;
    } catch (e) {
      print(e);
    }
    return movies;
  }
}

class SearchForMovie implements SearchMoviesService {
  List<Movie> movies = <Movie>[];
  final String query;

  SearchForMovie({required this.query});

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse(moviePrefixUrl + query + movieFilterSulfix),
        headers: resquestHeader,
      );
      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)['results']) {
          movies.add(Movie.fromMap(movie));
        }
      } else {
        throw Exception(response.body);
      }
      return movies;
    } catch (e) {
      print(e);
    }
    return movies;
  }
}
