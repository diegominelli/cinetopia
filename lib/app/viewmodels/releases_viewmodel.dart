import 'package:cinetopia_flutter/app/models/movie.dart';
import 'package:cinetopia_flutter/app/services/search_movies_service.dart';

class ReleasesViewmodel {
  List<Movie> _moviesList = [];
  Future<List<Movie>> getUpcomingMovies() async {
    final SearchMoviesService searchForUpcomingMovies =
        SearchForUpcomingMovies();
    _moviesList = await searchForUpcomingMovies.getMovies();
    return _moviesList;
  }

  List<Movie> get moviesList => _moviesList;
}
