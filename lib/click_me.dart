import 'package:flutter/material.dart';

class ClickMeScreen extends StatefulWidget {
  const ClickMeScreen({Key? key}) : super(key: key);

  @override
  _ClickMeScreenState createState() => _ClickMeScreenState();
}

class _ClickMeScreenState extends State<ClickMeScreen> {

  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click Me Screen"),
      ),
      body: Center(
        child: Text("Click me count is $count"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
