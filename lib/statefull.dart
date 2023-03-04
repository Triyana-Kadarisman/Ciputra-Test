import 'package:flutter/material.dart';

class Statefull extends StatefulWidget {
  const Statefull({Key? key}) : super(key: key);

  // const Home({Key? key}) : super(key: key);

  @override
  State<Statefull> createState() => _HomeState();
}

class _HomeState extends State<Statefull> {
  int _data = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic State Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_data', style: TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed: () {
                _data++;
                // untuk me refresh dengan data baru
                setState(() {});
              },
              child: const Text("PLUS 1"),
            ),
            ElevatedButton(
              onPressed: () {
                _data--;
                // untuk me refresh dengan data baru
                setState(() {});
              },
              child: const Text("Minus 1"),
            ),
          ],
        ),
      ),
    );
  }
}
