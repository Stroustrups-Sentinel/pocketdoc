import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';
import 'animal_produce_diet.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diets'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _dietCardEntry(
                cardName: 'balanced',
                imageLocation: 'assets/images/cera-muV_8wy4mzw-unsplash.jpg',
                onTapFunction: () {
                  Navigator.of(context).pushNamed('/diet/balanced');
                }),
            _dietCardEntry(
                cardName: 'fruits & vegetables',
                imageLocation: 'assets/images/ja-ma--gOUx23DNks-unsplash.jpg',
                onTapFunction: () {
                  Navigator.of(context)
                      .pushNamed('/diet/fruits_and_vegetables');
                }),
            _dietCardEntry(
                cardName: 'meat',
                imageLocation:
                    'assets/images/eiliv-sonas-aceron-YlAmh_X_SsE-unsplash.jpg',
                onTapFunction: () {
                  Navigator.of(context).pushNamed('/diet/meat');
                }),
            _dietCardEntry(
                cardName: 'restaurant food',
                imageLocation:
                    'assets/images/charles-koh-71qSwepk8cs-unsplash.jpg',
                onTapFunction: () {
                  Navigator.of(context).pushNamed('/diet/restaurant');
                }),
            _dietCardEntry(
                cardName: 'animal produce',
                imageLocation: 'assets/images/pexels-pixabay-315755.jpg',
                onTapFunction: () {
                  Navigator.of(context).pushNamed('/diet/animal_produce');
                }),
          ],
        ),
      ),
      // bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}

Widget _dietCardEntry(
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
