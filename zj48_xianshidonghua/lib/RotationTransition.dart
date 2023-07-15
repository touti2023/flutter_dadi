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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //让程序和手机的刷新频率统一
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    ); //..repeat();  重复运动
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            _controller.repeat(); //重复运动
          }),
      appBar: AppBar(
        title: const Text('RotationTransition'),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 40),
          RotationTransition(
            turns: _controller,
            child: const FlutterLogo(size: 60),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _controller.forward(); //一次
                  },
                  child: const Text("forward")),
              ElevatedButton(
                  onPressed: () {
                    _controller.stop();
                  },
                  child: const Text("stop")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reset(); //重置
                  },
                  child: const Text("reset")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reverse(); //倒序播放一次
                  },
                  child: const Text("reverse")),
            ],
          )
        ],
      )),
    );
  }
}
