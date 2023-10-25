import 'package:flutter/material.dart';

class WidgetDasar extends StatelessWidget {
  WidgetDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                // return const Image(image: AssetImage("images/woman.png"));
                return const Padding(
                  padding: const EdgeInsets.all(20),
                  child: ImageCard(
                    imageLink:
                        "https://cdn.pixabay.com/photo/2023/09/13/00/40/ai-generated-8249824_1280.jpg",
                    description: "GAJAH",
                  ),
                );
              })),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageLink;
  final String description;
  const ImageCard(
      {super.key, required this.imageLink, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageLink),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              description,
              style: TextStyle(fontSize: 20),
            ))
      ],
    );
  }
}
