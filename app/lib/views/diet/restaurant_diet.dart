import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class RestaurantFoodDietScreen extends StatelessWidget {
  const RestaurantFoodDietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant foods Diet'),
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
