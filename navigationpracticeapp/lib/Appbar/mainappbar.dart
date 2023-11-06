import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Video'),
      leading: Icon(Icons.arrow_back_ios_new),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share),
        ),
      ],
    );
  }
}
