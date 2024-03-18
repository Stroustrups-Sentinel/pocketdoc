import 'package:flutter/material.dart';
import 'package:pocket_doc/views/news/health_news_card.dart';
import '../interfaceUtility/bottom_app_bar.dart';

class HealthNewsScreen extends StatefulWidget {
  const HealthNewsScreen({Key? key}) : super(key: key);

  @override
  State<HealthNewsScreen> createState() => _HealthNewsScreenState();
}

class _HealthNewsScreenState extends State<HealthNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health News'),
      ),
      body: ListView(
        children: _generateNews(context),
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}

List<Widget> _generateNews(BuildContext context) {
  //temp fill with dummy values
  return List.filled(10, _newsCard(context));
  // return <Widget>[];
}

Widget _newsCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      // open news card with item
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HealthNewsCardScreen(
                headline: "Zvanzi sadza rava kudyiwa amana",
              )));
    },
    child: Stack(
      children: const <Widget>[
        Placeholder(
          fallbackHeight: 180.0,
        ),
        Divider(
          color: Colors.pink,
          thickness: 30.0,
        ),
      ],
    ),
  );
}
