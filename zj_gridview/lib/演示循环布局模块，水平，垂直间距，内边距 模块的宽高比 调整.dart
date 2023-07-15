/* GridView 网格布局

创建网格列表主要有以下三种方法：

1.GridView.count  网格布局 一行的数量
2.GridView.extent 网格布局 横轴子元素的最大长度
3.GridView.builder 动态网格布局

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

//演示循环布局模块，水平，垂直间距，内边距 模块的宽高比 调整

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //利用循环打印出个多个模块
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];

    for (var i = 1; i <= 12; i++) {
      tempList.add(Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.blue),
          child: Text("第${i}个元素", style: TextStyle(fontSize: 20))));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10), //内边距，即模块到边框的距离
      crossAxisSpacing: 10, //水平间距
      mainAxisSpacing: 10, //垂直间距
      crossAxisCount: 3, //一行的模块数量
      childAspectRatio: 0.7, //表示宽高的比例（1是正方形，比例伸缩）
      children: _initGridViewData(),
    );
  }
}
