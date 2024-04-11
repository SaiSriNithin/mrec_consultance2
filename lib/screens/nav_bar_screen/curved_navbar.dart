import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrec_consultance/screens/historyScreen.dart';
import 'package:mrec_consultance/screens/homeScreent.dart';
import 'package:mrec_consultance/screens/nav_bar_screen/contact.dart';
import 'package:mrec_consultance/screens/nav_bar_screen/labs.dart';
import 'package:mrec_consultance/screens/nav_bar_screen/profile.dart';

class CurvedNavBar extends StatefulWidget {
  const CurvedNavBar({super.key});
  @override
  State<StatefulWidget> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  int index = 2;
  final screens = [
    const HistoryScreen(),
    const LabsScreen(),
    const AllTestScreen(),
    const Contact(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.history,
        size: MediaQuery.of(context).size.height / 20,
        color: index == 0
            ? const Color.fromARGB(255, 71, 69, 84)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      Icon(
        CupertinoIcons.lab_flask_solid,
        size: MediaQuery.of(context).size.height / 20,
        color: index == 1
            ? const Color.fromARGB(255, 71, 69, 84)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      Icon(
        Icons.window_sharp,
        size: MediaQuery.of(context).size.height / 20,
        color: index == 2
            ? const Color.fromARGB(255, 71, 69, 84)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      Icon(
        Icons.phone,
        size: MediaQuery.of(context).size.height / 20,
        color: index == 3
            ? const Color.fromARGB(255, 71, 69, 84)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      Icon(
        CupertinoIcons.person_crop_circle_fill,
        size: MediaQuery.of(context).size.height / 20,
        color: index == 4
            ? const Color.fromARGB(255, 71, 69, 84)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
    ];
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 71, 69, 84),

        buttonBackgroundColor: Colors.transparent,
        height: 60,
        backgroundColor: Colors.transparent,
        // animationCurve: Curves.easeOut,
        animationDuration: const Duration(milliseconds: 300),
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
