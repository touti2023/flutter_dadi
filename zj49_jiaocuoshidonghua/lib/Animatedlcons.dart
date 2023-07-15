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
          _controller.forward();
        },
      ),
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _controller,
            size: 40,
          ),
          const SizedBox(
            height: 40,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.home_menu,
            progress: _controller,
            size: 40,
          ),
          const SizedBox(
            height: 40,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.search_ellipsis,
            progress: _controller,
            size: 40,
          ),
        ],
      )),
    );
  }
}
