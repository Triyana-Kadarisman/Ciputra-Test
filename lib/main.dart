import 'dart:async';
import 'package:ciputra/animasi.dart';
import 'package:ciputra/statefull.dart';
import 'package:ciputra/stateless.dart';
import 'package:ciputra/test_dua.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start untuk menghilangkan tulisan debug
      debugShowCheckedModeBanner: false,
      // End untuk menghilangkan tulisan debug
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ciputra'),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test_Dua()),
                      );
                    },
                    child: const Text('Test Dua'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Statefull()),
                      );
                    },
                    child: const Text('Statefull Widget'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Stateless()),
                      );
                    },
                    child: const Text('Stetless Widget'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Animasi()),
                      );
                    },
                    child: const Text('Animasi'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
