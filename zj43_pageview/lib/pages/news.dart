import 'package:flutter/material.dart';

//新闻页面接收上个页面传来的参数
class NewsPage extends StatefulWidget {
  //定义一个标题属性

  const NewsPage({
    super.key,
  });

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //返回上一页
          Navigator.pop(context);
        },
        child: const Icon(Icons.home_filled),
      ),
      appBar: AppBar(
        //获取NewsPage里定义的title
        title: Text("新闻"),
      ),
      body: const Center(
        child: Text("新闻页面"),
      ),
    );
  }
}
