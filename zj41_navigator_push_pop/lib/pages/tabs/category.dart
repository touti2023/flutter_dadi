import 'package:flutter/material.dart';
import '../search.dart'; //倒入搜索组件d
import '../form.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                //跳转命名路由
                Navigator.pushNamed(context, "/search");
              },
              child: const Text("跳转到search")),
        ],
      ),
    );
  }
}
