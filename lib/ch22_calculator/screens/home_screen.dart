import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("계산기", style: TextStyle(fontSize: 60),),
      ),
      body: Center(),
      floatingActionButton: Row(
        children: [
          IconButton(onPressed: null, icon: Icon(Icons.add)),
          IconButton(onPressed: null, icon: Icon(Icons.remove)),
          IconButton(onPressed: null, icon: Icon(Icons.close)),
          IconButton(onPressed: null, icon: Icon(Icons.close)),
        ],
      ),
    );
  }
}
