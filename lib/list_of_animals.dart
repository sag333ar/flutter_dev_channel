import 'package:flutter/material.dart';

class ListOfAnimalsView extends StatelessWidget {
  const ListOfAnimalsView({Key? key}) : super(key: key);
  static const animals = ["Lion", "Tiger", "Cat", "Dog", "Cow"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Animals"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          title: Text(animals[index]),
        );
      }, separatorBuilder: (context, index) {
        return const Divider(thickness: 1, color: Colors.black,);
      }, itemCount: animals.length,)
    );
  }
}
