import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
