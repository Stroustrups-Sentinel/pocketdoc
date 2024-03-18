import 'package:flutter/material.dart';
import 'package:pocket_doc/views/news/health_news.dart';
import 'package:pocket_doc/views/news/pandemic_tracker.dart';

import '../interfaceUtility/bottom_app_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recovery Verdict'),
      ),
      body: ListView(
        children: [
          _NewsCardEntry(
              cardName: 'pandemic tracker',
              imageLocation: 'assets/images/pexels-cottonbro-3951377.jpg',
              onTapFunction: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PandemicTrackerScreen()));
              }),
          _NewsCardEntry(
              cardName: 'general health news',
              imageLocation: 'assets/images/zhen-hu-Xruf17OrkwM-unsplash.jpg',
              onTapFunction: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HealthNewsScreen()));
              })
        ],
      ),
      // bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}

Widget _NewsCardEntry(
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
          thickness: 5.0,
          color: Colors.white,
          indent: 20.0,
          endIndent: 20.0,
        ),
      ],
    ),
  );
}
