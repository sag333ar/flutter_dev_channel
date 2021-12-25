import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListOfWordsView extends StatefulWidget {
  const ListOfWordsView({Key? key}) : super(key: key);

  @override
  _ListOfWordsViewState createState() => _ListOfWordsViewState();
}

class _ListOfWordsViewState extends State<ListOfWordsView> {
  var words = ["Flutter App Development"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of words"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(words[index][0]),
            ),
            title: Text(words[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
            color: Colors.black,
          );
        },
        itemCount: words.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          var value = WordPair.random().asPascalCase;
          setState(() {
            words.add(value);
          });
        },
      ),
    );
  }
}
