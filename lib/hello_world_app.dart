import 'package:flutter/material.dart';
import 'package:hello_world/hello_world_home_screen.dart';
import 'package:hello_world/list_of_animals.dart';
import 'package:hello_world/list_of_words.dart';

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello World App Title",
      home: ListOfWordsView(),
    );
  }
}