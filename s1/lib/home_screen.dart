import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "G-store Esprit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [Cell(image: 'dmc5.jpg', title: 'Devil May Cry 5', price: 200,),
          Cell(image: 'fifa.jpg', title: 'Fifa 22', price: 200,),
          Cell(image: 'minecraft.jpg', title: 'Minecraft', price: 200,),
          Cell(image: 'nfs.jpg', title: 'Need For Speed', price: 200,),
          Cell(image: 'rdr2.jpg', title: 'Red Dead', price: 200,),
          Cell(image: 're8.jpg', title: 'Village', price: 200,)],
      ),
    );
  }
}
