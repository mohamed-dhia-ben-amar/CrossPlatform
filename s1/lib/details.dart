import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "G-store Esprit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset("Assets/dmc5.jpg"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  SizedBox(
                    height: 50,
                  ),
                  Text("200 TND",
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      // <-- Icon
                      Icons.shopping_basket,
                      size: 24.0,
                    ),
                    label: Text('Acheter',
                        style: TextStyle(
                            fontSize: 25, color: Colors.white)), // <-- Text
                  ),
                ],
              ))),
    );
  }
}
