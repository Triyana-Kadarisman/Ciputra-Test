import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  const Stateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.settings,
              size: 50,
            ),
            SizedBox(height: 20),
            Text('Triyana Kadarisman'),
          ],
        ),
      ),
    );
  }
}
