import 'package:flutter/material.dart';

class TabbedContent extends StatefulWidget {
  const TabbedContent({super.key});

  @override
  State<TabbedContent> createState() => _TabbedContentState();
}

class _TabbedContentState extends State<TabbedContent> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Placeholder(),
    );
  }
}
