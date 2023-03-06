import 'package:flutter/material.dart';

import '../controllers/errors/page_not_found_404.dart';
import '../routes/routing.dart';

void main(List<String> args) {
  runApp(const Kanadventures());
}

class Kanadventures extends StatelessWidget {
  const Kanadventures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) => Routing.pushRoute(settings),
      onUnknownRoute: (settings) => Error404.routeNotFound(),
    );
  }
}
