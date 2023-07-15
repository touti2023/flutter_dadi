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
      home: const _HomePageState(),
    );
  }
}

class _HomePageState extends StatefulWidget {
  const _HomePageState({super.key});

  @override
  State<_HomePageState> createState() => __HomePageStateState();
}

class __HomePageStateState extends State<_HomePageState>
    with SingleTickerProviderStateMixin {
  bool flag = true;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          flag ? _controller.forward() : _controller.reverse();
          flag = !flag;
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("title"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: _controller.drive(
                Tween(begin: Offset(0.0, 0.0), end: Offset(1.0, 0.0))
                    .chain(CurveTween(curve: Interval(0.0, 0.3)))),
            child: Container(
              width: 120,
              height: 60,
              color: Colors.blue[300],
            ),
          ),
          SlideTransition(
            position: _controller.drive(
                Tween(begin: Offset(0.0, 0.0), end: Offset(1.0, 0.0))
                    .chain(CurveTween(curve: Interval(0.3, 0.6)))),
            child: Container(
              width: 120,
              height: 60,
              color: Colors.blue[600],
            ),
          ),
          SlideTransition(
            position: _controller.drive(
                Tween(begin: Offset(0.0, 0.0), end: Offset(1.0, 0.0))
                    .chain(CurveTween(curve: Interval(0.6, 0.9)))),
            child: Container(
              width: 120,
              height: 60,
              color: Colors.blue[900],
            ),
          ),
        ],
      )),
    );
  }
}
