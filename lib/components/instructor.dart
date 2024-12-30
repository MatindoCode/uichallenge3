import 'package:flutter/material.dart';

class Instructor extends StatelessWidget {
  const Instructor({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      height: screenHeight / 12,
      child: ElevatedButton(
            onPressed: () {
              // Handle play button
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 143, 200, 246),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              //minimumSize: Size( screenWidth * 0.5, screenHeight / 12),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              elevation: 30, // Increase elevation for a more pronounced "pop"
               // Add a subtle shadow
              side: const BorderSide(color: Colors.black, width: 3)
            ),    child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar( 
                    radius: 20,
                  backgroundImage: AssetImage('lib/images/flutter.jpg'),),
                ),
               
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        "Matin",
                        style: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      Text(
                        'Psychologist at Princeton',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),),
    );
  }
}