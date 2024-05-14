import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My First Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My First Flutter App', style: TextStyle(color: Colors.blue))),
      body: const Center(child: Text('Content of the page')),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('ERRAMI Anas'),
              accountEmail: Text('anaserrami24@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
            ),
            ListTile(
              title: Text('Element 1'),
            ),
            ListTile(
              title: Text('Element 2'),
            ),
            ListTile(
              title: Text('Element 3'),
            ),
          ],
        ),
      ),
    );
  }
}
