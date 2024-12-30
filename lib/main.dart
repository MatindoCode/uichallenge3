import 'package:flutter/material.dart';
import 'package:ui/components/clip.dart';
import 'package:ui/components/lesson.dart';
import 'package:ui/components/list.dart';
import 'package:ui/components/navbar.dart';
//import 'package:ui/components/topicitem.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Corrected property name
      home: CoursePage(),
    );
  }
}

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Stack(children: [
        ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                color: Colors.green.shade200,
              )
            ),
            Positioned
            ( right: 0, top: screenWidth / 2.6 ,child: Image.asset('lib/images/Image.png'),),

      Column(
        children: [
       
       AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        actions: [
           IconButton(
            icon: const Icon(Icons.download,),
            onPressed: () {
              // Handle menu actions
            },
          ),
          
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle menu actions
            },
          ),
        ],
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.orange.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'Self-care',
            style: TextStyle(
              fontSize: 15,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true, // Center the title
      ),

      SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Tag
          
            const SizedBox(height: 20),

            // Title
            const Text(
              'Take care of',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'yourself',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              'Course · 35 min',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 16),

            // Illustration (replace with an actual asset or network image)
            
            const SizedBox(height: 16),

            // Lesson Button
            const Lesson(),
            const SizedBox(height: 50),

            // Description
            const Text(
              'Self care is simply the time we take to look after our mind and body. But how do we practice it regularly? Let\'s explore the science of self-care in this course.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: screenHeight / 20),

            // Topics Section
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "We'll learn about",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  Text(
              '3 key ideas',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            
              ],
            ),
            
          

            // Topics List
            Container(
              height: screenHeight * 0.3,
              child: ListViews()),
          ],
        ),
      ),
    ]
    
    
      ),
      
      
       const Align(alignment: Alignment.bottomCenter, child: NavbarWidget()),
      ] 

     ),   
    
    );
  }
}

