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
    //演示Stack 和 Align 搭配使用
    return const Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            //stack组件必须在其他容器之上使用。
            children: [
              Positioned(left: 10, child: Text("收藏")),
              Positioned(right: 10, child: Text("购买")),
            ],
          ),
        )
      ],
    );
  }
}
