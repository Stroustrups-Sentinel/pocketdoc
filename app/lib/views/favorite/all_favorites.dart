import 'package:flutter/material.dart';

class AllFavoritesScreen extends StatelessWidget {
  const AllFavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Favorites'),
      ),
      body: Container(
        child: ListView(),
      ),
    );
  }
}
