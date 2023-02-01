import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/ch21_counter/provider/count.dart';
import 'package:hello_flutter/ch21_counter/screen/counter.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => CountProvider(),
        child: Counter(),
      ),
    );
  }

}