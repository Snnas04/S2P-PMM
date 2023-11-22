import 'package:flutter/material.dart';
// import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:practica_t2/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = '292415afa58b2c33ab4bc0ffdaf18076';
  final String _language = 'es-ES';
  final String _page = '1';

  List<Movie> onDisplayMovies = [];

  MoviesProvider() {
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': _page,
    });

    // Await the http get response, then decode the json-formatted response.
    final result = await http.get(url);

    final nowPlayingResponse = NowPlayingResponse.fromJson(result.body as Map<String, dynamic>);

    onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
  }
}