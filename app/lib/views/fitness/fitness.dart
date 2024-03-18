import 'package:flutter/material.dart';

import '../interfaceUtility/bottom_app_bar.dart';

class FitnessScreen extends StatelessWidget {
  const FitnessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness'),
      ),
      body: ListView(
        children: [
          _fitnessCardEntry(cardName: 'Why is it needed ?'),
          _fitnessCardEntry(cardName: 'Regular workouts'),
          _fitnessCardEntry(cardName: 'Wheelchair workouts'),
          _fitnessCardEntry(cardName: 'Pregnant workouts'),
          // _fitnessCardEntry()
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }

  Widget _fitnessCardEntry(
      {String? imageLocation, String? cardName, dynamic? onTapFunction}) {
    return GestureDetector(
      onTap: onTapFunction ?? () {},
      child: Stack(
        children: [
          Image.asset(
            imageLocation ??
                'assets/images/alexandr-podvalny-tE7_jvK-_YU-unsplash.jpg',
            fit: BoxFit.cover,
            scale: 0.05,
            height: 350,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 100.0),
            child: Text(
              cardName ?? 'data data data',
              style: const TextStyle(
                fontSize: 64.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Comfortaa',
                color: Colors.white, //Color.fromRGBO(172, 172, 222, 1.0),
                shadows: <Shadow>[
                  Shadow(color: Color.fromRGBO(0, 0, 0, 1.0), blurRadius: 12.0),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 6.0,
            color: Colors.white,
            indent: 20.0,
            endIndent: 20.0,
          ),
        ],
      ),
    );
  }
}
