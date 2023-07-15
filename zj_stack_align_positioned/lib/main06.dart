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
    //获取设备的宽度和高度

    return Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: const Align(
          alignment: Alignment(0.5, 1), //可以穿参数调整位置
          child: Text("Hello flutter"),
        ));
  }
}
