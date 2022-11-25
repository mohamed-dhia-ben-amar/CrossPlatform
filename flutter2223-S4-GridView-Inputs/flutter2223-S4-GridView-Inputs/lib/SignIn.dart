// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final String image;
  const SignIn({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String mail;

  late String password;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Store"),
    ),
        body: Form(
          key: formKey,
          child: ListView(children: [
      Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Image.asset(widget.image),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  // ignore: prefer_const_constructors
                  TextFormField(
                    onSaved: (newValue) {
                      mail = newValue!;
                    },
                    validator: (value) {
                      RegExp regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (value!.isEmpty) {
                        return "email cannot be empty";
                      } else if (!regex.hasMatch(value)) {
                        return "Email invalid";
                      }
                    },
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    // ignore: prefer_const_constructors
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ignore: prefer_const_constructors
                  TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    onSaved: (newValue) {
                      password = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password cannot be empty";
                      }
                    },
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                    // ignore: prefer_const_constructors
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Information"),
                                  content: Text(
                                      "Email = $mail \nPassword = $password")
                                );
                              },
                            );
                          }
                        },
                        label: const Text(
                          "S'authentifier",
                          style: TextStyle(fontSize: 22),
                        ),
                        icon: const Icon(Icons.verified_user),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton.icon(
                        style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.red)),
                        onPressed: (() => {}),
                        label: const Text(
                          "Annuler",
                          style: TextStyle(fontSize: 22),
                        ),
                        icon: const Icon(Icons.cancel),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
      ),
    ]),
        )
    );
  }
}