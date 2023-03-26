import 'package:flutter/material.dart';

import '../../client/views/homepage.dart';
import '../views/errors/page_not_found_404.dart';

class Routing {
  static Route<dynamic> pushRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return Error404.routeNotFound();
    }
  }
}
