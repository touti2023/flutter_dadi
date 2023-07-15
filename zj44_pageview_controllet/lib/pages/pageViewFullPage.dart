import 'package:flutter/material.dart';

//上拉无限加载
class PageViewFullPage extends StatefulWidget {
  const PageViewFullPage({super.key});

  @override
  State<PageViewFullPage> createState() => _PageViewFullPageState();
}

class _PageViewFullPageState extends State<PageViewFullPage> {
  //无限加载循环菜单
  List<Widget> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 10; i++) {
      list.add(Center(
        child: Text(
          "第${i + 1}屏",
          //要注意调尺寸，不然会出异常
          style: TextStyle(fontSize: 60),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Page'),
      ),
      body: PageView(
        //垂直滚动
        scrollDirection: Axis.vertical,
        //无限循环模式。当索引临近list长度时，进入下一个循环添加链表。反复
        onPageChanged: (index) {
          print(index);
          if (index + 2 == list.length) {
            setState(() {
              for (var i = 0; i < 10; i++) {
                list.add(Center(
                  child: Text(
                    "第${i + 1}屏",
                    style: const TextStyle(fontSize: 60),
                  ),
                ));
              }
            });
          }
        },
        children: list,
      ),
    );
  }
}
