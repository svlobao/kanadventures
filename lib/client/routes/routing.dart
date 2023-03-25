import 'package:flutter/material.dart';

import '../../client/views/homepage.dart';
import '../views/errors/page_not_found_404.dart';
import '../views/kanas_json.dart';

class Routing {
  static Route<dynamic> pushRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/kanas_json':
        return MaterialPageRoute(builder: (context) => const KanasPage());
      default:
        return Error404.routeNotFound();
    }
  }
}
