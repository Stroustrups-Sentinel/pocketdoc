import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class PregnantWorkoutsScreen extends StatelessWidget {
  const PregnantWorkoutsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pregnant workouts'),
      ),
      body: ListView(),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
