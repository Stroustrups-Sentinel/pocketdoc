import 'package:flutter/material.dart';
import 'package:pocket_doc/views/home/home.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // shape: shape,
      // color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Visit Home',
              icon: const Icon(Icons.home_outlined),
              onPressed: () {
                // Navigator.of(context).popUntil(ModalRoute.withName('/home'));
                // Navigator.of(context).pop();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    ModalRoute.withName('/home'));
              },
            ),
            // if (centerLocations.contains(fabLocation))
            const Spacer(),
            IconButton(
              tooltip: 'Favorites',
              icon: const Icon(Icons.star_outline),
              onPressed: () {
                Navigator.of(context).pushNamed('/favorite');
              },
            ),
            const Spacer(),
            IconButton(
              tooltip: 'My Account',
              icon: const Icon(Icons.account_circle_outlined),
              onPressed: () {
                Navigator.of(context).pushNamed('/account');
              },
            ),
          ],
        ),
      ),
    );
  }
}
