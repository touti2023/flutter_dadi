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
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          flag ? controller.forward() : controller.reverse();
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
          SlidingBox(
            controller: controller,
            color: Colors.blue[300],
            curve: const Interval(0.2, 0.4),
          ),
          SlidingBox(
            controller: controller,
            color: Colors.blue[600],
            curve: const Interval(0.4, 0.6),
          ),
          SlidingBox(
            controller: controller,
            color: Colors.blue[900],
            curve: const Interval(0.6, 0.8),
          ),
        ],
      )),
    );
  }
}

//封装
class SlidingBox extends StatelessWidget {
  final AnimationController controller;
  final Color? color;
  final Curve curve;
  const SlidingBox(
      {super.key,
      required this.controller,
      required this.color,
      required this.curve});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: controller.drive(
          Tween(begin: Offset(0.0, 0.0), end: Offset(1.0, 0.0))
              .chain(CurveTween(curve: curve))),
      child: Container(
        width: 120,
        height: 60,
        color: Colors.blue[300],
      ),
    );
  }
}
