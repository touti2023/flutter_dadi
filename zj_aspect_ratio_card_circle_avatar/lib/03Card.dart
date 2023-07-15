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
              borderRadius: BorderRadius.circular(10) //圆角
              ),
          elevation: 20, //阴影
          margin: const EdgeInsets.all(10), //四周间距
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9, //图片宽高比
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ), //充满
              ListTile(
                //图片圆形方法一
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                title: Text("xxx"),
                subtitle: Text("222xx"),
              )
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10) //圆角
              ),
          elevation: 20, //阴影
          margin: const EdgeInsets.all(10), //四周间距
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9, //图片宽高比
                child: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
                  fit: BoxFit.cover,
                ),
              ), //充满
              const ListTile(
                //图片圆形方法二
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.itying.com/images/flutter/3.png"),
                ),
                title: Text("xxx"),
                subtitle: Text("222xx"),
              )
            ],
          ),
        )
      ],
    );
  }
}
