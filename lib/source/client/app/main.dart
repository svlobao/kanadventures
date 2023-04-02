import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../routes/routing.dart';
import '../views/errors/page_not_found_404.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final bundle = await rootBundle.loadString('AssetManifest.json');
  //print(bundle);
  final Map<String, dynamic> jsonMap = json.decode(bundle);
  // ignore: unused_local_variable
  final List<String> assetPaths = jsonMap.keys.toList();
  //print(assetPaths);
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
