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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        //注意，Stack 是相对于外部容器定位，若没有外部则默认对整个屏幕
        children: [
          Positioned(

              ///配置方位
              left: 0,
              bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              )),
          const Positioned(
              //配置位置
              right: 0,
              top: 190,
              child: Text("hi"))
        ],
      ),
    );
  }
}
