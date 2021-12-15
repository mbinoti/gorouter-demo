import 'package:flutter/material.dart';
import 'package:navpage/view/page1.dart';
import 'package:navpage/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const Page1(),
          '/page2': (_) => Page2(),
        });
  }
}
