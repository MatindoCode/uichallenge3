import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      
      children: [
        SizedBox(width: screenWidth / 9),
        const Column(
          children: [
            Icon(Icons.folder, size: 50,),
            Text(
              "15 lessons",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {
            // Handle play button
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            minimumSize: Size(screenWidth / 2.7, screenHeight / 12),
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            elevation: 30, // Increase elevation for a more pronounced "pop"
             // Add a subtle shadow
            side: const BorderSide(color: Colors.black, width: 3)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 65,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Play",
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  Text(
                    'Why you should...',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
