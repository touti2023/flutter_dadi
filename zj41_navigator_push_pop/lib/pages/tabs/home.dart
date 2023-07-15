import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zj_bottomnavigationbar/pages/tabs.dart';
import '../tools/keepAliveWrapper.dart'; //倒入缓存组件
import '../search.dart'; //倒入搜索组件d
import '../form.dart'; //倒入表单组件
import '../news.dart'; //倒入传值组件
import '../shop.dart'; //倒入传值组件

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
        ],
      ),
    );
  }
}
