import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

//有状态组件/动态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //添加计数器
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter app"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$_numCount",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
              onPressed: () {
                //添加方法，计数变化
                setState(() {
                  _numCount++;
                });
              },
              child: const Text("増加する"))
        ],
      )),
      //底部动态按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numCount++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
