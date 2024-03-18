import 'package:flutter/material.dart';

import '../interfaceUtility/bottom_app_bar.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Favorites'),
      ),
      //  bottomNavigationBar: MyBottomAppBar(),
    );
  }
}