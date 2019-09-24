

import 'package:flutter_sample_app/src/models/item_model.dart';
import 'package:flutter_sample_app/src/models/trailer_model.dart';
import 'package:flutter_sample_app/src/resources/movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}