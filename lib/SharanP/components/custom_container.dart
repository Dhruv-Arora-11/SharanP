import 'package:flutter/material.dart';

class ComedyShowCard extends StatelessWidget {
  ComedyShowCard({required this.image});
  String image = ""; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust according to pixel accuracy
      height: 280,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Background Image with Flame and Mic
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image, // Ensure this image is added in assets
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Date & Time

          // Show Name
          Positioned(
            bottom: 45,
            left: 16,
            right: 16,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 50,
                      spreadRadius: 3,
                    offset: Offset(0, 5),
                    )
                  ]
                ),
                child: Text(
                  'Kisi Ko Batana Mat Ft.\nAnubhav Singh Bas...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Date Information
          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Container(
              height: 25,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 50
                  )
                ]
                
              ),
              child: Center(
                child: Text(
                  'Fri, 27 Dec onwards',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
