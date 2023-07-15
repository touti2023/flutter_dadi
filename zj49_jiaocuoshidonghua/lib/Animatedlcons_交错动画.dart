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
        title: Text("title"),
      ),
      body: Center(
          child: Stack(
        children: [
          //0-0.2秒search消失 0.2-0.4秒 close显示.tween代表尺寸！
          ScaleTransition(
              scale: _controller.drive(Tween(begin: 0.0, end: 1.0)
                  .chain(CurveTween(curve: const Interval(0.0, 0.2)))),
              child: Icon(Icons.close, size: 40)),
          ScaleTransition(
              scale: _controller.drive(Tween(begin: 1.0, end: 0.0)
                  .chain(CurveTween(curve: Interval(0.2, 0.4)))),
              child: Icon(Icons.search, size: 40)),
        ],
      )),
    );
  }
}
