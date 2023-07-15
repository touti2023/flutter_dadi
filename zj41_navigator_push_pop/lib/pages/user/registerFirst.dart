import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({super.key});

  @override
  State<RegisterFirstPage> createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第一步"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("注册第一步"),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/registerSecond");
                },
                child: Text("下一步"))
          ],
        ),
      ),
    );
  }
}
