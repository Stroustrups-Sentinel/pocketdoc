import 'package:flutter/material.dart';
// import '../interfaceUtility/bottom_app_bar.dart';

//Global Variables

const borderRadiusSize_S = 5.0;
const borderRadiusSize_M = 8.0;
const borderRadiusSize_L = 14.0;
const dividerThickness = 4.0;
const pageIconSize = 50.0;

class HomeScreen extends StatelessWidget {
  /*
  * contains the contents displayed on home 
  */
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('PocketDoc'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/account');
            },
            icon: const Icon(Icons.account_circle_outlined),
            tooltip: 'My Account',
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/help');
            },
            icon: const Icon(Icons.help_outline),
            tooltip: 'Need help',
          )
        ],
      ),
      body: Stack(
        // clipBehavior: Clip.hardEdge,
        children: <Widget>[
          // Background Image
          Image.asset(
            // 'assets/asta-black-clover.png',
            'assets/images/alexandr-podvalny-tE7_jvK-_YU-unsplash.jpg',
            // filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            height: double.infinity,
            scale: 1.0,
          ),
          // Items(Widgets) on Screen
          Center(
            child: Column(
              children: <Widget>[
                // Outer container
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.white30, //Colors.amber,
                    borderRadius:
                        BorderRadius.all(Radius.circular(borderRadiusSize_S)),
                  ),
                  // Inner Container
                  child: Container(
                    // padding: EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(135, 0, 88, 1.0), //Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(borderRadiusSize_S)),
                    ),
                    child: Column(
                      children: <Widget>[
                        // Row Containing the Search and the List Icons
                        IconTheme(
                          data: IconThemeData(
                              color: Theme.of(context).colorScheme.onPrimary),
                          child: Row(
                            children: <Widget>[
                              // IconButton(
                              //   onPressed: () {
                              //     Navigator.of(context)
                              //         .pushNamed('/all_favorites');
                              //   },
                              //   icon: const Icon(Icons.list_outlined),
                              //   tooltip: 'List all favorites',
                              // ),
                              Expanded(child: Container()),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search),
                                tooltip: 'Search',
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: dividerThickness,
                        ),
                        // Widget Containing Quote
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            'Get Healthy results and stay Healthy',
                            locale: Locale.fromSubtags(languageCode: 'en'),
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: 'Comfortaa',
                              color: Colors.white70,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: dividerThickness,
                        ),
                        //Row with the icons [1]favorites [2]Specialists [3]Map locations
                        IconTheme(
                          data: IconThemeData(
                              color: Theme.of(context).colorScheme.onPrimary),
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            margin: const EdgeInsets.all(50.0),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(
                                  172, 172, 222, 1.0), //Colors.blueGrey,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(borderRadiusSize_M)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    // heart icon => favorite (selected items bu the client to keep and most used)
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/favorite');
                                      },
                                      icon: const Icon(
                                        Icons.favorite_outline,
                                        size: pageIconSize,
                                      ),
                                      tooltip: 'Favorites',
                                    ),

                                    // shield icon (with star) => specialist icon
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/specialist');
                                      },
                                      icon: const Icon(
                                        Icons.health_and_safety_outlined,
                                        size: pageIconSize,
                                      ),
                                      tooltip: 'Specialists',
                                    ),

                                    // location icon => map
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pushNamed('/map');
                                      },
                                      icon: const Icon(
                                        Icons.map_outlined,
                                        size: pageIconSize,
                                      ),
                                      tooltip: 'Map locations',
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    // fork and knife Icon => diet icon
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/diet');
                                      },
                                      icon: const Icon(
                                        Icons.restaurant_outlined,
                                        size: pageIconSize,
                                      ),
                                      tooltip: 'Diets and tips',
                                    ),

                                    // dumbbell icon => fitness
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/fitness');
                                      },
                                      icon: const Icon(
                                        Icons.fitness_center_outlined,
                                        size: pageIconSize,
                                      ),
                                      tooltip: 'Fitness and exercise',
                                    ),

                                    // Injection Icon => news(Pandemic tracker)
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/news');
                                      },
                                      icon: const Icon(
                                        Icons.healing_outlined,
                                        size: pageIconSize,
                                      ),
                                      tooltip: 'Health news and pandemics',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
