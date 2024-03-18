import 'package:flutter/material.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class SpecialistDetailScreen extends StatelessWidget {
  final specialist;

  const SpecialistDetailScreen({Key? key, String? this.specialist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(specialist ?? 'specialist'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/map');
            },
            icon: const Icon(
              Icons.map_outlined,
              // size: pageIconSize,
            ),
            tooltip: 'locate ${specialist ?? "specialist"} near you',
          ),
          IconButton(
            onPressed: () {
              //show where the info was retrieved from
            },
            icon: const Icon(Icons.info_outline),
            tooltip: 'information source',
          ),
        ],
      ),
      body: ListView(
        children: const <Widget>[
          // picture showing specialist
          Placeholder(),
          //paragraph of specialist
          Placeholder(),
          Divider(),
          //saved contacts for the specialists
          Placeholder()
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
