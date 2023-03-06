import 'package:flutter/material.dart';

class AppbarTitle extends StatefulWidget {
  const AppbarTitle({Key? key}) : super(key: key);

  @override
  State<AppbarTitle> createState() => _AppbarTitleState();
}

class _AppbarTitleState extends State<AppbarTitle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Text('KANADVENTURES'),
      onTap: () {
        setState(
          () {
            Navigator.of(context).popAndPushNamed('/');
          },
        );
      },
    );
  }
}
