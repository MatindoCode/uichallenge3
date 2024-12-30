import 'package:flutter/material.dart';
import 'package:ui/components/instructor.dart';
import 'package:ui/components/topicitem.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        TopicItem(number: 1, title: 'What is self-care'),
        Divider(),
        TopicItem(number: 2, title: 'When and how to practice it'),
        Divider(),
        TopicItem(number: 3, title: 'How self-care improve our lifes'),
        // Add more TopicItem widgets as needed
       Text(
                  "Your Instuctor....",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      Instructor(),
      ],
    
    );
  }
}