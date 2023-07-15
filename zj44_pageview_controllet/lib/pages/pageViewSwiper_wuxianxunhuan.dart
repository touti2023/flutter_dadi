import 'dart:async';
import './widget/swiper.dart';
import 'package:flutter/material.dart';

class PageViewSwiper_wuxianxunhuan extends StatefulWidget {
  const PageViewSwiper_wuxianxunhuan({super.key});

  @override
  State<PageViewSwiper_wuxianxunhuan> createState() =>
      _PageViewSwiper_wuxianxunhuanState();
}

class _PageViewSwiper_wuxianxunhuanState
    extends State<PageViewSwiper_wuxianxunhuan> {
  //创建集合传图
  List<String> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      "https://e1.pxfuel.com/desktop-wallpaper/209/257/desktop-wallpaper-world-of-warcraft-paladin.jpg",
      "https://e0.pxfuel.com/wallpapers/971/356/desktop-wallpaper-tyrande-whisperwind-world-of-warcraft.jpg",
      "https://wallpaperaccess.com/full/1614731.jpg",
    ];

    //创建定时器,每3秒循环
    Timer.periodic(const Duration(seconds: 3), (timer) {
      print("执行");
      //timer.cancel();  //退出
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewSwiper'),
        ),
        body: ListView(
          children: [Swiper(list: list)],
        ));
  }
}
