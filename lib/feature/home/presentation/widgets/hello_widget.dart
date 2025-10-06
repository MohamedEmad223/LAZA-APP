import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text(
          "Hello",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Text("Welcome to Laza.", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
