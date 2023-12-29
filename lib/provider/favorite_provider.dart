import 'package:flutter/material.dart';
class FavoriteProvider extends ChangeNotifier {
  List<List> _hotels = [];
  List<List> get hotels => _hotels;

  void toggleFavorite(List hotel){
    final isLiked = _hotels.contains(hotel);
    if (isLiked){
      _hotels.remove(hotel);
    }else{
      _hotels.add(hotel);
    }
    notifyListeners();
  }

  bool isLiked(List hotel){
    final isLiked = _hotels.contains(hotel);
    return isLiked;
  }

  void clearFavorite(){
    _hotels = [];
    notifyListeners();
  }
}