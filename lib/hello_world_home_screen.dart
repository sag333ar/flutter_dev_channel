import 'package:flutter/material.dart';

class HelloWorldHome extends StatelessWidget {
  const HelloWorldHome({Key? key}) : super(key: key);

  Widget _getBody() {
    return const Center(
      child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World - Home Screen"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: _getBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
