import 'package:flutter/material.dart';
import './routes/routes.dart';

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
        initialRoute: "/", //这里地址可以指定，如：/login，默认打开登陆页面。
        onGenerateRoute: onGenerateRoute);
  }
}
