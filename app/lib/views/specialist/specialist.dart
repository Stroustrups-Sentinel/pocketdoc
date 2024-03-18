import 'package:flutter/material.dart';
import 'package:pocket_doc/views/specialist/specialist_detail.dart';

import '../interfaceUtility/bottom_app_bar.dart';

class SpecialistScreen extends StatelessWidget {
  const SpecialistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthcare Specialists'),
      ),
      body: ListView(children: _specialistsCardEntries(context)),
      // bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}

Widget _specialistCardEntry(BuildContext context,
    {String? imageLocation, String? cardName, dynamic onTapFunction}) {
  return GestureDetector(
    onTap: onTapFunction ??
        () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SpecialistDetailScreen(
                    specialist: cardName,
                  )));
        },
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
              fontSize: 54.0,
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
          thickness: 15.0,
          color: Colors.white,
          indent: 20.0,
          endIndent: 20.0,
        ),
      ],
    ),
  );
}

List<Widget> _specialistsCardEntries(BuildContext context) {
  return <Widget>[
    _specialistCardEntry(context, cardName: 'Primary care doctors'),
    _specialistCardEntry(context, cardName: 'Pediatricians'),
    _specialistCardEntry(context, cardName: 'Geriatric medicine doctors'),
    _specialistCardEntry(context, cardName: 'Allergists'),
    _specialistCardEntry(context, cardName: 'Dermatologists'),
    _specialistCardEntry(context, cardName: 'Infectious disease doctors'),
    _specialistCardEntry(context, cardName: 'Ophthalmologists'),
    _specialistCardEntry(context, cardName: 'Obstetrician/gynecologists'),
    _specialistCardEntry(context, cardName: 'Cardiologists'),
    _specialistCardEntry(context, cardName: 'Endocrinologists'),
    _specialistCardEntry(context, cardName: 'Gastroenterologists'),
    _specialistCardEntry(context, cardName: 'Nephrologists'),
    _specialistCardEntry(context, cardName: 'Urologists'),
    _specialistCardEntry(context, cardName: 'Pulmonologists'),
    _specialistCardEntry(context, cardName: 'Otolaryngologists'),
    _specialistCardEntry(context, cardName: 'Neurologists'),
    _specialistCardEntry(context, cardName: 'Psychiatrists'),
    _specialistCardEntry(context, cardName: 'Oncologists'),
    _specialistCardEntry(context, cardName: 'Radiologists'),
    _specialistCardEntry(context, cardName: 'Rheumatologists'),
    _specialistCardEntry(context,
        cardName: 'General surgeons',
        imageLocation:
            'assets/images/piron-guillaume-U4FyCp3-KzY-unsplash.jpg'),
    _specialistCardEntry(context,
        cardName: 'Orthopedic surgeons',
        imageLocation:
            'assets/images/piron-guillaume-U4FyCp3-KzY-unsplash.jpg'),
    _specialistCardEntry(context,
        cardName: 'Cardiac surgeons',
        imageLocation:
            'assets/images/piron-guillaume-U4FyCp3-KzY-unsplash.jpg'),
    _specialistCardEntry(context,
        cardName: 'Anesthesiologists',
        imageLocation:
            'assets/images/piron-guillaume-U4FyCp3-KzY-unsplash.jpg'),
  ];
}

// Scaffold _SpecialistInfo({String? specialist}) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(specialist ?? 'specialist'),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.map_outlined,
//             // size: pageIconSize,
//           ),
//           tooltip: 'locate ${specialist ?? "specialist"} near you',
//         )
//       ],
//     ),
//     body: ListView(
//       children: [],
//     ),
//   );
// }

// void _navigateToSpecialist() {
//   // Navigator.of(context).push(route)
// }
