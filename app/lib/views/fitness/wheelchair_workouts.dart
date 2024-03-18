import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class WheelchairWorkoutsScreen extends StatelessWidget {
  const WheelchairWorkoutsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wheelchair workouts'),
      ),
      body: ListView(),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
