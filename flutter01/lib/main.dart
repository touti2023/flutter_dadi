//importM  快捷键
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text("你好,Flutter")), body: const MyApp()),
  ));
}

//statelessW快捷键
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build可以直接生成重写方法
    return const Center(
      child: Text("你好 China,我爱你！",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.blue, fontSize: 40.0)),
    );
  }
}
