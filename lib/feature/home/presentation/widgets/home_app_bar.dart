import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xFFF4F4F4),
          child: Icon(Icons.menu, color: Colors.black),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xFFF4F4F4),
          child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
        ),
      ],
    );
  }
}
