import 'package:flutter/material.dart';
//抽离之后要引包
import './pages/tabs.dart';
import './pages/search.dart'; //倒入搜索组件d
import '/pages/form.dart'; //倒入表单组件
import '/pages/news.dart'; //倒入传值组件

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
      //home: const tabs()  //调用换成下方写法
      //初始化路由
      initialRoute: "/",
      //配置路由
      routes: {
        "/": (context) => const tabs(),
        "/news": (context) => const NewsPage(),
        "/search": (context) => const SearchPage(),
        "/form": (context) => const FormPage(
              arguments: {},
            ),
      },
    );
  }
}
