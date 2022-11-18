import 'package:flutter/material.dart';
import 'package:s1/product_detail.dart';
import 'package:s1/product_info.dart';
import 'package:s1/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Store",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Store"),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: ListView(children: [
          const ProductInfo(
            image: "images/dmc5.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          const ProductInfo(
            image: "images/fifa.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          const ProductInfo(
            image: "images/minecraft.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          const ProductInfo(
            image: "images/nfs.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          const ProductInfo(
            image: "images/re8.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          const ProductInfo(
            image: "images/dmc5.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          const ProductInfo(
            image: "images/fifa.jpg",
            title: "Residant Evil",
            price: 160,
          ),
          // const ProductDetails(
          //     title: "Fifa",
          //     price: 100,
          //     description:
          //         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          //     image: "images/dmc5.jpg")
          // const Signup(image: 'images/dmc5.jpg')
        ]),
      ),
    );
  }
}
