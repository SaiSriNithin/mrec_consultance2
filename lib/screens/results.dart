import 'package:flutter/material.dart';
import 'package:mrec_consultance/screens/homeScreent.dart';
import 'package:mrec_consultance/screens/nav_bar_screen/curved_navbar.dart';
import 'package:mrec_consultance/widgets/multi_provider.dart';

// ignore: must_be_immutable
class Results extends StatelessWidget {
  Results({super.key, required this.resultsname});
  List<String> resultsname = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: resultsname.length,
              itemBuilder: (context, index) {
                return MultiPurposeCard(
                    category: resultsname[index],
                    subcategory: "",
                    subcategory1: "",
                    height1: 70,
                    screen: const AllTestScreen());
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CurvedNavBar(),
                ),
              );
            },
            child: const Text('Continue'),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
