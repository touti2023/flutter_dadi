import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zj_bottomnavigationbar/pages/tabs.dart';
import '../tools/keepAliveWrapper.dart'; //倒入缓存组件
import '../search.dart'; //倒入搜索组件

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
    return Scaffold(
      appBar: //preferredSize调整appBar高度
          PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            elevation: 5,
            backgroundColor: Colors.white,
            title: Container(
              //改tabBar的高度
              height: 35,
              child: TabBar(
                  //文字大小
                  labelStyle: TextStyle(fontSize: 18),
                  isScrollable: true,
                  //底部指示器颜色
                  indicatorColor: Colors.red,
                  //选中色
                  labelColor: Colors.red,
                  //未选中色
                  unselectedLabelColor: Colors.black,
                  //光标与文本尺寸对齐
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _tabController,
                  //监听索引值变化(只能监听点击事件，无法捕获滑动事件)
                  // onTap: (index) {
                  //   print(index);
                  // },
                  tabs: const [
                    Tab(
                      child: Text("关注"),
                    ),
                    Tab(
                      child: Text("热门"),
                    ),
                    Tab(
                      child: Text("视频"),
                    ),
                    Tab(
                      child: Text("新闻"),
                    ),
                    Tab(
                      child: Text("推送"),
                    ),
                    Tab(
                      child: Text("精华"),
                    ),
                    Tab(
                      child: Text("国内"),
                    ),
                    Tab(
                      child: Text("国外"),
                    ),
                  ]),
            )),
      ),
      body: TabBarView(controller: _tabController, children: [
        //记录并缓存当前阅读位置
        KeepAliveWrapper(
            child: ListView(
          children: const [
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("123"),
            ),
            ListTile(
              title: Text("lzsb"),
            ),
          ],
        )),
        //const Text("我是关注"),
        const Text("我是热门"),
        const Text("视频"),
        const Text("新闻"),
        const Text("推送"),
        const Text("精华"),
        const Text("国内"),
        const Text("国外"),
      ]),
    );
  }
}
