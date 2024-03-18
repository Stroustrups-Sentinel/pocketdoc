import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class MeatDietScreen extends StatelessWidget {
  const MeatDietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meats'),
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
