import 'package:flutter/material.dart';
import 'package:test_web/SharanP/components/app_bar.dart';
import 'package:test_web/SharanP/components/custom_container.dart';
import 'package:test_web/SharanP/components/premium_banner.dart';
import 'package:test_web/SharanP/components/scrollable_row.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Row
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(child: ComedyShowCard(image: "assets/SharanP/im1.png")),
                    SizedBox(width: 10),
                    Flexible(child: ComedyShowCard(image: "assets/SharanP/im2.png")),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Second Row
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(child: ComedyShowCard(image: "assets/SharanP/im3.png")),
                    SizedBox(width: 10),
                    Flexible(child: ComedyShowCard(image: "assets/SharanP/im4.png")),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Scrollable Row without Padding
              ScrollableRow(), // No extra padding here to allow full width
              SizedBox(height: 20),

              // Another Row with Show Cards
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(child: ComedyShowCard(image: "assets/SharanP/im3.png")),
                    SizedBox(width: 10),
                    Flexible(child: ComedyShowCard(image: "assets/SharanP/im4.png")),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Bottom Banner
              SizedBox(
                width: double.infinity,
                height: 120,
                child: PremiumBanner(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
