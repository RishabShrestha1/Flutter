// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CurrentTabs extends StatefulWidget {
  const CurrentTabs({super.key});

  @override
  State<CurrentTabs> createState() => _CurrentTabsState();
}

class _CurrentTabsState extends State<CurrentTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4, vsync: this); // Set the number of tabs (in this case, 2)
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Trending',
                ),
                Tab(
                  text: 'Trending',
                ),
                Tab(
                  text: 'Trending Feature',
                ),
                Tab(
                  text: 'Trending',
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
