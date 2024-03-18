import 'package:flutter/material.dart';
import 'package:pocket_doc/views/news/pandemic_tracker_card.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class PandemicTrackerScreen extends StatelessWidget {
  const PandemicTrackerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pandemic Tracker'),
      ),
      body: ListView(
        children: _generateTrackedPandemics(context),
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}

List<Widget> _generateTrackedPandemics(BuildContext context) {
  // generate dummy values
  return List.filled(15, _trackedPandemic(context));

  return <Widget>[];
}

Widget _trackedPandemic(BuildContext context) {
  return GestureDetector(
    onTap: () {
      //launch the pandemic
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const PandemicTrackerCardScreen()));
    },
    child: Stack(children: const [
      //image
      Placeholder(),
      //text
      //divider
      Divider(
        thickness: 25.0,
        color: Color.fromARGB(255, 224, 221, 21),
        indent: 20.0,
        endIndent: 20.0,
      ),
    ]),
  );
}

// Widget _trackedPandemicDetail() {
//   return Scaffold(
//     body: ListView(
//       children: const [
//         // Pandemic Info
//         Placeholder(
//           fallbackHeight: 100.0,
//           color: Colors.blue,
//         ),
//         // Pandemic Statistics
//         Placeholder(
//           color: Colors.green,
//           fallbackHeight: 120.0,
//         ),
//       ],
//     ),
//   );
// }
