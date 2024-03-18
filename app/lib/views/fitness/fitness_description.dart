import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class FitnessDescriptionScreen extends StatelessWidget {
  const FitnessDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Why I should be fit'),
      ),
      body: ListView(),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
