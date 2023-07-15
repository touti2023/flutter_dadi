import 'package:flutter/material.dart';
//抽离之后要引包
import './pages/tabs.dart';

//自定义底部导航
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "demo",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const tabs());
  }
}
