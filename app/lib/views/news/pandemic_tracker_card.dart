import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class PandemicTrackerCardScreen extends StatelessWidget {
  const PandemicTrackerCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{pandemic} detailed info.'),
      ),
      body: ListView(
        children: const [
          // Pandemic Info
          Placeholder(
            fallbackHeight: 100.0,
            color: Colors.blue,
          ),
          // Pandemic Statistics
          Placeholder(
            color: Colors.green,
            fallbackHeight: 120.0,
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
