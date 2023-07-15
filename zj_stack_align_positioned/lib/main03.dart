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
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表2")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表1")),
          ],
        ),
        Positioned(
            //调整位置
            left: 0,
            top: 0,
            width: size.width,
            height: 44,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.black,
                      child: const Text(
                        "二级导航",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}
