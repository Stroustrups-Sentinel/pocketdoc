import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class FruitsAndVegetablesDietScreen extends StatelessWidget {
  const FruitsAndVegetablesDietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits & Vegetables'),
      ),
      body: ListView(
        children: const [
          //the first detailing which is constant
          Placeholder(),
          Divider(),
          //API loaded detailing
          Placeholder(),
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
