import 'package:flutter/material.dart';

class LableRowWidget extends StatelessWidget {
  const LableRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Choose Brand",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("View All", style: TextStyle(color: Colors.purple)),
                  ],
                );
  }
}