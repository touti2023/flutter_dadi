import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "皮卡丘",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("kk App")),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 220,
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
        Icon(Icons.pedal_bike),
      ],
    );
  }
}
