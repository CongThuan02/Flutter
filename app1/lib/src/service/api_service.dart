import 'dart:developer';
import 'dart:ffi';
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:movie_db_app/src/model/movie.dart';

class apiService {
  final Dio _dio = Dio();
  final String baseUrl = "https://api.themoviedb.org/3";
  final String apiKey = 'api_key=YOUR-MOVIE-DB-API-KEY';
  Future<List<Movie>> getNowPlayingMovie() async {
    try {
      final response = await _dio.get('$baseUrl/movie_now_play?$apiKey');
      var movies = response.data['result'];
      // var m = movies as List;
      // print(movies);
      List<Movie> movielist = movies.map((m) => Movie.fromJson(m)).toList();
      // List<Movie> aa = movies.map((i) => Movie.fromJson(i)).toList();
      // window.console.log('111');
      return movielist;
    } catch (error, stackTrace) {
      throw Exception('day la loi $error stackTrace : $stackTrace');
    }
  }
}
