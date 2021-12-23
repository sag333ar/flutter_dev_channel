import 'package:flutter/material.dart';
import 'package:hello_world/hello_world_home_screen.dart';

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello World App Title",
      home: HelloWorldHome(),
    );
  }
}