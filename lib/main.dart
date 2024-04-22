
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider (
      create: (contex) => MyAppSate(),
      child: MaterialApp(
      title: 'Primer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme. fromSeed (seedColor: Colors.deepOrange),
         ),
         home: MyHomePage(),
      ),
    );
  }
   }

        

class MyAppSate extends ChangeNotifier  {
  var current = WordPair .random ();
   }

class MyHomePage extends StatelessWidget {
  @override 
  Widget build (BuildContext context){
    var appState = context.watch<MyAppSate>();

    return Scaffold (  
    body: Column (
      children: [
        Text ('A random idea:'),
        Text (appState.current.asLowerCase),
      ],
    ),
    );
  }
}
  