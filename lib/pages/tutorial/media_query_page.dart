import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  static const nameRoute = "/media_query";

  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final appBar = AppBar(
      title: const Text("Media Query"),
    );
    final bodyHeight = mediaQueryHeight -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLanscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          children: [
            Container(
              height: isLanscape ? bodyHeight * 0.6 : bodyHeight * 0.4,
              width: mediaQueryWidth,
              color: Colors.amber,
            ),
            Container(
              height: isLanscape ? bodyHeight * 0.4 : bodyHeight * 0.6,
              color: Colors.red,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text("Hello World"),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
