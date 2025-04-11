import 'package:cinetopia_flutter/app/api_key.dart';

const String popularMoviesUrl =
    'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1';

const resquestHeader = {
  'accept': 'application/json',
  'Authorization': 'Bearer $apiKey'
};
