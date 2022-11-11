import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyForm extends StatefulWidget {
  const BuyForm({Key? key}) : super(key: key);

  @override
  State<BuyForm> createState() => _BuyFormState();
}

class _BuyFormState extends State<BuyForm> {
  final _formKey = GlobalKey<FormState>();
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
                ],
              ))),
    );
  }
}
