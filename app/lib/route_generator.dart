import 'package:flutter/material.dart';

// ROUTE IMPORTS (Alphabetical)
import './views/account/account.dart';
import './views/diet/diet.dart';
import './views/favorite/favorite.dart';
import './views/fitness/fitness.dart';
import './views/map/map.dart';
import './views/news/news.dart';
import './views/specialist/specialist.dart';
import './views/home/home.dart';
import './views/help/help.dart';
import './views/favorite/all_favorites.dart';

// diet imports
import './views/diet/animal_produce_diet.dart';
import './views/diet/balanced_diet.dart';
import './views/diet/fruits_and_vegetables_diet.dart';
import './views/diet/meat_diet.dart';
import './views/diet/restaurant_diet.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
/*
      case '/second':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
                  data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
*/
      case '/account':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const AccountScreen(
                // data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      case '/all_favorites':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const AllFavoritesScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
        break;

      case '/diet':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const DietScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      case '/diet/animal_produce':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const AnimalProduceDietScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
        break;

      case '/diet/balanced':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const BalancedDietScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
        break;

      case '/diet/fruits_and_vegetables':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const FruitsAndVegetablesDietScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
        break;

      case '/diet/meat':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const MeatDietScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
        break;

      case '/diet/restaurant':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const RestaurantFoodDietScreen(
                //     data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
        break;

      case '/favorite':
        if (/*args is String*/ true) {
          return MaterialPageRoute(
              builder: (_) => const FavoriteScreen(
                  // data: args,
                  ));
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      case '/fitness':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const FitnessScreen(
                //data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      case '/help':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const HelpScreen(
                //data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      // break;

      case '/home':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const HomeScreen(
                //data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      // break;

      case '/map':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const MapScreen(
                //data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      case '/news':
        // Validation of correct data type
        if (/*args is String */ true) {
          return MaterialPageRoute(
            builder: (_) => const NewsScreen(
                // data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      case '/specialist':
        // Validation of correct data type
        if (/*args is String*/ true) {
          return MaterialPageRoute(
            builder: (_) => const SpecialistScreen(
                // data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
