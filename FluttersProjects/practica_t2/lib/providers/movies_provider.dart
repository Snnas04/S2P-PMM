import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practica_t2/models/models.dart';

class VideosProvider extends ChangeNotifier {
  final String _baseUrl = 'www.googleapis.com';
  final String _apiKey = 'AIzaSyC8tXNHUrOsnQoSmkNhHg6KMOE5tuDFubk';
  final String _part = 'snippet';
  final String _maxResults = '10';
  final String _q = 'trending';
  final String _chart = 'mostPopular';
  final String _type = 'video';
  final String _region = 'ES';

  List<Movie> onDisplayVideos = [];

  VideosProvider() {
    getOnDisplayVideos();
  }

  getOnDisplayVideos() async {
    var url = Uri.https(_baseUrl, 'youtube/v3/videos', {
      'part': _part,
      'maxResults': _maxResults,
      'chart': _chart,
      'type': _type,
      'region': _region,
      'key': _apiKey,
    });

    final result = await http.get(url);
    final searchResponse = NowPlayingResponse.fromJson(result.body as Map<String, dynamic>);

    onDisplayVideos = searchResponse.results;

    notifyListeners();
  }
}
