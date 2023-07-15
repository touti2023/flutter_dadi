/* 

1.AspectRatio 根据设置调整元素 child 的宽高比。
按照允许条件尽量扩展，占满区域。
子组件：child

2.Card组件，具有圆形和阴影。
margin  外边距
child  子组件
elevation 阴影深度
color 背景颜色
shadowColor 阴影颜色
clipBehavior 一堆副方法
Shape 几个副方法


*/

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter App")),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //需求：页面上显示一个容器，宽度是屏幕的宽度，高度是容器宽度的一半

    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
