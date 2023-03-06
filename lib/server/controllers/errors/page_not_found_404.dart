import 'package:flutter/material.dart';

class Error404 {
  static Route<dynamic> routeNotFound() {
    String description = '404 page not found';
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(child: Text(description)),
      ),
    );
  }
}
