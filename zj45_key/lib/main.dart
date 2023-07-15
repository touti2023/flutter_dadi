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
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomePage(),
    );
  }
}

//HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //1.获取子Widget :urrentState 的属性*****记住 *
          var boxState = _globalKey.currentState as _BoxState;
          print(boxState._count);
          setState(() {
            boxState._count++;
          });

          //调用子Widget:urrentState 的方法
          boxState.run();

          //2.获取子Widget(了解)
          var boxWidget = _globalKey.currentWidget as Box;
          print(boxWidget.color);

          //3.获取渲染的属性(了解)
          // var renderBox =
          //     _globalKey.currentContext.findRenderObject() as RenderBox;
          // print(renderBox.size);
        },
      ),
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
          child: Box(
        key: _globalKey,
        color: Colors.red,
      )),
    );
  }
}

//子Widget
class Box extends StatefulWidget {
  final Color color;
  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  void run() {
    print("我是box的run方法");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(widget.color)),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: Text(
            "$_count",
            style: Theme.of(context).textTheme.headlineLarge,
          )),
    );
  }
}
