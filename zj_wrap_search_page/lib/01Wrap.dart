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
    return Padding(
      //返回按钮方法，显示在屏幕上
      padding: const EdgeInsets.all(10),
      child: Wrap(
        //Wrap 自动扩散下一行/列，不会溢出。
        //alignment: WrapAlignment.center,
        spacing: 10, //水平间距  *
        runSpacing: 10, //垂直间距   *
        //direction: Axis.vertical,//纵向排列/默认横向排列  *
        children: [
          Button(text: '第1集', onPressed: () {}),
          Button(text: '第2集', onPressed: () {}),
          Button(text: '第3集', onPressed: () {}),
          Button(text: '第4集', onPressed: () {}),
          Button(text: '第5集', onPressed: () {}),
          Button(text: '第6集', onPressed: () {}),
          Button(text: '第7集', onPressed: () {}),
          Button(text: '第8集', onPressed: () {}),
          Button(text: '第9集', onPressed: () {}),
          Button(text: '第10集', onPressed: () {}),
          Button(text: '第11集', onPressed: () {}),
          Button(text: '第12集', onPressed: () {}),
          Button(text: '第13集', onPressed: () {}),
        ],
      ),
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
