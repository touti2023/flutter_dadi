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

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0.5,
      upperBound: 1.5,
    );
    // ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
              _controller.repeat(reverse: true);
            }),
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SlideTransition(
                position: Tween(begin: Offset(0.0, 0.0), end: Offset(0, 2))
                    .chain(CurveTween(curve: Curves.bounceInOut))
                    //当前时间点的20%开始运动，到80%结束，数字越大，运动停留时间越久。
                    .chain(CurveTween(curve: Interval(0.3, 0.7))) //交错式动画
                    .animate(_controller),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                )),
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
            ),
          ],
        )));
  }
}
