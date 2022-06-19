// ignore: file_names
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:signup_page/login.dart';

import 'form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 10, top: 30),
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://lh3.googleusercontent.com/2hDpuTi-0AMKvoZJGd-yKWvK4tKdQr_kLIpB_qSeMau2TNGCNidAosMEvrEXFO9G6tmlFlPQplpwiqirgrIPWnCKMvElaYgI-HiVvXc=w600'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(widget.name),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyLogin()),
                );
              },
              child: const Text("Log out"),
            ),
            const SizedBox(
              height: 15,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormPage()),
                );
              },
              child: const Text("Log out"),
            ),
          ],
        ),
      ),
    );
  }
}
