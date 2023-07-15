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
          title: const Text("純愛のアニメコンボ"),
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
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text(
              "热搜",
              style: Theme.of(context).textTheme.titleLarge,
            ) //字体大小
          ],
        ),
        const Divider(
          color: Colors.black,
        ), //线
        Wrap(
          spacing: 10, //水平间距
          children: [
            Button(text: "灌篮高手", onPressed: () {}),
            Button(text: "名侦探柯南", onPressed: () {}),
            Button(text: "蜡笔小新", onPressed: () {}),
            Button(text: "火影忍者", onPressed: () {}),
            Button(text: "游戏王dm", onPressed: () {}),
            Button(text: "精灵宝可梦", onPressed: () {}),
            Button(text: "犬夜叉", onPressed: () {}),
            Button(text: "海贼王", onPressed: () {}),
            Button(text: "数码宝贝", onPressed: () {}),
            Button(text: "哆啦A梦", onPressed: () {}),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text("历史记录", style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
        const Divider(color: Colors.black),
        const Column(
          children: [
            ListTile(title: Text("鬼父")),
            ListTile(title: Text("夜勤病院")),
            ListTile(title: Text("我爱学习")),
            ListTile(title: Text("考研资料")),
            Divider(color: Colors.black),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete_forever),
                label: Text("清空历史记录")))
      ],
    );
  }
}

//自定义按钮组件
// ignore: must_be_immutable
class Button extends StatelessWidget {
  //添加需要接受传入的参数：按钮内容，按钮方法
  String text; //按钮名称
  void Function()? onPressed; //按钮方法
  Button({required this.text, this.onPressed, super.key}); //构造方法加上

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 215, 213, 213)), //按钮背景颜色
            foregroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 112, 99, 99))), //字体颜色
        onPressed: () {},
        child: Text(text));
  }
}
