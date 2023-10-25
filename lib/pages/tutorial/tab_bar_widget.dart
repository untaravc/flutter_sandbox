import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<Tab> topTabList = [
    const Tab(
      text: "Tab 1",
    ),
    const Tab(
      text: "Tab 2",
    ),
    const Tab(
      text: "Tab 3",
    ),
    const Tab(
      text: "Tab 4",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: topTabList.length,
      initialIndex: 2,
      child: Scaffold(
        appBar:
            AppBar(title: Text("Tab barr"), bottom: TabBar(tabs: topTabList)),
        body: const TabBarView(children: [
          Center(
            child: Text("Content 1"),
          ),
          Center(
            child: Text("Content 2"),
          ),
          Center(
            child: Text("Content 3"),
          ),
          Center(
            child: Text("Content 4"),
          ),
        ]),
      ),
    );
  }
}
