import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  final String imagePath;

  const ShowCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Adjust as per design
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
