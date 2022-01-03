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
      body: Column(
          children: const [
          Image(image: AssetImage('assets/photo.jpg'))
        //   ListView.separated(
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         leading: CircleAvatar(
        //           child: Text(words[index][0]),
        //         ),
        //         title: Text(words[index]),
        //       );
        //     },
        //     separatorBuilder: (context, index) {
        //       return const Divider(
        //         thickness: 1,
        //         color: Colors.black,
        //       );
        //     },
        //     itemCount: words.length,
        //   ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          var value = WordPair
              .random()
              .asPascalCase;
          setState(() {
            words.add(value);
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
