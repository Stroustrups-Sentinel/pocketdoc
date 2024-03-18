import 'package:flutter/material.dart';

import '../interfaceUtility/bottom_app_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Map'),),
      body: Center(
        child: ElevatedButton(
          // Within the MapScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
