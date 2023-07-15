import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //定义搜索页面功能
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: const Center(
        child: Text("搜索页面"),
      ),
    );
  }
}
