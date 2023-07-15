//Stack 表示堆叠的意思。
//可以用Stack和Align  或Stack和Position 来实现 页面定位 布局
//其中：alignment 表示配置所有子元素的显示位置。
//children 为子组件

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello"),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //堆叠组件
      children: [
        //子组件
        Container(
          //布局1
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        Container(
          //布局2
          height: 200,
          width: 200,
          color: Colors.purple,
        ),
        const Text("ni hao!") //布局3
      ],
    );
  }
}
