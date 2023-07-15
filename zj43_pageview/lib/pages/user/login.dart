import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("登录跳转演示，执行登陆后返回到上一个页面"),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  //返回到上一级
                  Navigator.of(context).pop();
                },
                child: Text("执行登陆"))
          ],
        ),
      ),
    );
  }
}
