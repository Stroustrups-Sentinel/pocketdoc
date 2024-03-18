import 'package:flutter/material.dart';

import '../interfaceUtility/bottom_app_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView(
        children: <Widget>[
          // Image.asset('assets/asta-black-clover.png',  scale: 1.0,),
          Center(
            child: Column(
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          ),
        ],
      ),

      // Center(
      //   child: ElevatedButton(
      //     // Within the AccountScreen widget
      //     onPressed: () {
      //       // Navigate back to the first screen by popping the current route
      //       // off the stack.
      //       Navigator.pop(context);
      //     },
      //     child: const Text('Go back!'),
      //   ),
      // ),
      // bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
