import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting and handling dates

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? selectedDate;
  String ageResult = "";

  // Method to pick a date
  void pickDate(BuildContext context) async {
    DateTime now = DateTime.now();
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: now,
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
        calculateAge();
      });
    }
  }

  // Method to calculate the age
  void calculateAge() {
    if (selectedDate != null) {
      DateTime now = DateTime.now();
      int age = now.year - selectedDate!.year;

      // Adjust if the current date is before the user's birthday this year
      if (now.month < selectedDate!.month ||
          (now.month == selectedDate!.month && now.day < selectedDate!.day)) {
        age--;
      }

      setState(() {
        ageResult = "Your age is: $age years";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // // Display the selected date or a placeholder
            // Text(
            //   selectedDate != null
            //       ? "Selected Date of Birth: ${DateFormat.yMMMd().format(selectedDate!)}"
            //       : "No Date Selected",
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 20),

            // Button to pick the date of birth
            ElevatedButton(
              onPressed: () => pickDate(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Select Date of Birth",style: TextStyle(
                color: Colors.white
              ),),
            ),
            SizedBox(height: 20),

            // Display the calculated age
            Text(
              ageResult,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
