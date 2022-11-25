import 'package:flutter/material.dart';

class Game {
  //att
  late String image;
  late String title;
  late int price;

  //constuctor
  Game(this.image, this.title, this.price);

  int totalPrice(){
    // add your price calculation logic
    return price;
  }
}
