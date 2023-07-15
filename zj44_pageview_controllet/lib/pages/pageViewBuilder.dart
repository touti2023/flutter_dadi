import 'package:flutter/material.dart';

class PageViewBuilderPage extends StatefulWidget {
  const PageViewBuilderPage({super.key});

  @override
  State<PageViewBuilderPage> createState() => _PageViewBuilderPageState();
}

class _PageViewBuilderPageState extends State<PageViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    //循环10次
    return
        //一定要加Scaffold，appBar，body，不然黑屏
        Scaffold(
      appBar: AppBar(
        title: Text("PageViewBuilder"),
      ),
      body: PageView.builder(
          //垂直滑屏设置
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                "第${index + 1}屏",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            );
          }),
    );
  }
}
