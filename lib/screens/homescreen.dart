import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pics/models/image_models.dart';
import 'package:pics/widget/image_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModel.fromJson(jsonDecode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Let's See Some Images!",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: ImageList(images: images),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[400],
        shape: const CircleBorder(),
        onPressed: fetchImage,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[400],
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
    );
  }
}
