import 'package:flutter/material.dart';
import 'package:pics/models/image_models.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key, required this.images});
  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
