import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class HealthNewsCardScreen extends StatelessWidget {
  const HealthNewsCardScreen({Key? key, String? this.headline})
      : super(key: key);

  final headline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headline ?? 'data'),
      ),
      body: ListView(
        children: const [
          Placeholder(
            fallbackHeight: 800.0,
            strokeWidth: 8.0,
            color: Colors.orange,
          )
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
