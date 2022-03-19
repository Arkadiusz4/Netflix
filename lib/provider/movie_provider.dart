import 'package:flutter/widgets.dart';
import 'package:netflix/models/movie_models.dart';

class MovieProvider with ChangeNotifier {
  List<Movie> _items = [];

  List<Movie> get items {
    return [..._items];
  }

  void addMovie() {
    notifyListeners();
  }
}
