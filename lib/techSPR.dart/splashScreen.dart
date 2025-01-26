import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_web/techSPR.dart/homeSscreen.dart'; // For smooth transitions


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(milliseconds: 2000),() { if (mounted) { // Ensure the widget is still in the tree
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
    }
      },);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInDown(
              duration: Duration(milliseconds: 1500),
              curve: Curves.decelerate,
              child: Center(
                child: Icon(
                  Icons.star,
                  size: 100,
                ),
              ),
            ),
            FadeInUp(
              curve: Curves.decelerate,
              duration: Duration(milliseconds: 1500),
              child: Text("TECH SPR",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
    );
  }
}

