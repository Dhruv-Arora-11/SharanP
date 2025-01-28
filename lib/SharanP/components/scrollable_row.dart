import 'package:flutter/material.dart';
import 'package:test_web/SharanP/components/row_container.dart';

class ScrollableRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade900, // Matching the background
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment(-0.8, 0.1),
              child: Padding(
                padding: const EdgeInsets.only(bottom:18.0,left: 0),
                child: Text("Budget Friendly Shows",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),

            SingleChildScrollView(
              physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ShowCard(
                    imagePath: 'assets/SharanP/am1.png',
                  ),
                  SizedBox(width: 12),
                  ShowCard(
                    imagePath: 'assets/SharanP/am2.png',
                  ),
                  SizedBox(width: 12),
                  ShowCard(
                    imagePath: 'assets/SharanP/am3.png',
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
