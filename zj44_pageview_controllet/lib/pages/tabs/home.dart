import 'package:flutter/material.dart';
import '../search.dart'; //倒入搜索组件d

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 8, vsync: this);

    //监听 _tabController 索引值的改变事件（点击和滑动）
    _tabController.addListener(() {
      if (_tabController.animation!.value == _tabController.index) {
        //获取点击或滑动的索引值
        print(_tabController.index);
      }
    });
  }

  //当页面销毁时，触发
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //销毁 _tabControlle
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                //普通跳转路由
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SearchPage();
                }));
              },
              child: const Text("普通路由跳转")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/news");
              },
              child: const Text("命名路由跳转news")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/form");
              },
              child: const Text("命名路由传值form")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/shop");
              },
              child: const Text("命名路由传值shop")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/shop");
              },
              child: const Text("命名路由传值shop")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/dialog");
              },
              child: const Text("Dialog演示")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/pageView");
              },
              child: const Text("PageView演示")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/pageViewBuilder");
              },
              child: const Text("PageViewBuilder演示")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/pageViewFullPage");
              },
              child: const Text("PageView无限加载演示")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                //命名跳转路由
                Navigator.pushNamed(context, "/pageViewSwiper_wuxianxunhuan");
              },
              child: const Text("PageViewSwiper轮播图演示")),
        ],
      ),
    );
  }
}
