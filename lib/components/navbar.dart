import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return  Container(
      height:  screenHeight / 15,
      decoration: const BoxDecoration(color:Colors.black),
      padding: const EdgeInsets.only(top: 10),
      child: GNav(
          rippleColor: Colors.grey, // tab button ripple color when pressed
          hoverColor: Colors.grey.shade700, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 30,
          tabActiveBorder:
              Border.all(color: Colors.black, width: 1), // tab button border
          tabBorder:
              Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 900), // tab animation duration
          gap: 10, // the tab button gap between icon and text
          color: Colors.grey[200], // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 35, // tab button icon size
          tabBackgroundColor:
              Colors.purple.withOpacity(0.1), // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 25, vertical: 10), // navigation bar padding
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.shapes,
              text: 'Shapes',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Love',
            ),
            GButton(
              icon: LineIcons.faceWithoutMouth,
              text: 'Profile',
            )
          ]),
    );
  }
}
