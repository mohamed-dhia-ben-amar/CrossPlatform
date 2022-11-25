import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  final String image;
  const ResetPassword({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    //var
    GlobalKey<FormState> formKey = GlobalKey();
    late String mail;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Store"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("Assets/minecraft.jpg",
                    width: 460, height: 215)),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  mail = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "username cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
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
                                  "Username = $mail")
                          );
                        },
                      );
                    }
                  },
                  label: const Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 22),
                  ),
                  icon: const Icon(Icons.lock_reset_sharp),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
