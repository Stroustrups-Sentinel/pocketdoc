import 'package:flutter/material.dart';
import 'style.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: NewsScreen(),
      // routes: {
      //   '/':  (context) => const HomeScreen(),
      //   '/account': (context) => const AccountScreen(),
      //   '/diet': (context) => const DietScreen(),
      //   '/fitness': (context) => const FitnessScreen(),
      //   '/map':(context) => const MapScreen(),
      //   '/news':(context) => const NewsScreen(),
      //   '/specialist':(context) => const SpecialistScreen(),

      // },
      initialRoute: '/',
      theme: themeStyling(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
