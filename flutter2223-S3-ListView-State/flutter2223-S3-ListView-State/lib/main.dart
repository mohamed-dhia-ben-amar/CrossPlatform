import 'package:flutter/material.dart';
import 'package:myapp/SignUp.dart';
import 'package:myapp/details_screen.dart';
import 'package:myapp/home_screen.dart';

import 'Biblio.dart';
import 'SignIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Atelier Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
        appBar: AppBar(
        title: const Text("Inscription"),
    ),
    body : //const Signup(image: 'Assets/dmc5.jpg')
           //bilblo()
    SignIn(image: 'Assets/dmc5.jpg',)
     ));
  }
}
