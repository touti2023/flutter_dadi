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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10) //圆角效果
                ),
            elevation: 10, //阴影深度
            color: const Color.fromARGB(255, 224, 187, 132), //背景颜色
            margin: const EdgeInsets.all(10), //上下左右外间距10
            child: const Column(
              children: [
                ListTile(
                  title: Text("ざんさん", style: TextStyle(fontSize: 28)),
                  subtitle: Text("高级软件工程师"),
                ),
                Divider(), //横線
                ListTile(
                  title: Text("电话:090 3345 6789"),
                ),
                ListTile(
                  title: Text("地址:東京都板橋区2丁目2-18"),
                ),
              ],
            )),
        const SizedBox(
          height: 20,
        ), //上下间距

        const Card(
            //无阴影
            margin: EdgeInsets.all(10), //上下左右外间距10
            child: Column(
              children: [
                ListTile(
                  title: Text("りし", style: TextStyle(fontSize: 28)),
                  subtitle: Text("flutter高级软件工程师"),
                ),
                Divider(), //横線
                ListTile(
                  title: Text("电话:080 3235 6559"),
                ),
                ListTile(
                  title: Text("地址:東京都板橋区3丁目5-1-22"),
                ),
              ],
            )),
      ],
    );
  }
}
