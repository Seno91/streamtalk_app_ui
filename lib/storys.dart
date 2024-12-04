import 'package:flutter/material.dart';

class StorysCircle extends StatelessWidget {
  const StorysCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/details/WhatsApp Image 2024-10-08 at 16.47.02.jpeg",
            ),
          ),
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 250, 165, 186),
        ),
      ),
    );
  }
}
