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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          }),
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Center(
          child: Stack(
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text("i am king"),
              )
            ],
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: AnimatedContainer(
              width: 200,
              height: double.infinity,
              color: Colors.yellow,
              duration: const Duration(seconds: 1, milliseconds: 200),
              transform: flag
                  ? Matrix4.translationValues(-200, 0, 0)
                  : Matrix4.translationValues(0, 0, 0),
            ),
          )
        ],
      )),
    );
  }
}
