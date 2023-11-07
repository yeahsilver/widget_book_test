import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainContainer(
        color: Colors.red,
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: color);
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
