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
        body: Stack(
          children: [
            ListView(
              children: const [
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
              ],
            ),
            AnimatedPositioned(
                //类似购物车
                top: flag ? 10 : 600,
                right: flag ? 10 : 300,
                duration: Duration(seconds: 1),
                //curve: Curves.bounceInOut,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                )),
          ],
        ));
  }
}
