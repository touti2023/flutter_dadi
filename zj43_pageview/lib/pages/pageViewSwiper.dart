import 'package:flutter/material.dart';
import './widget/image.dart';

class PageViewSwiper extends StatefulWidget {
  const PageViewSwiper({super.key});

  @override
  State<PageViewSwiper> createState() => _PageViewSwiperState();
}

class _PageViewSwiperState extends State<PageViewSwiper> {
  //创建集合传图
  List<Widget> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      const ImagePage(
          src:
              "https://e1.pxfuel.com/desktop-wallpaper/209/257/desktop-wallpaper-world-of-warcraft-paladin.jpg"),
      const ImagePage(
          src:
              "https://e0.pxfuel.com/wallpapers/971/356/desktop-wallpaper-tyrande-whisperwind-world-of-warcraft.jpg"),
      const ImagePage(src: "https://wallpaperaccess.com/full/1614731.jpg"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewSwiper'),
        ),
        body: SizedBox(
          height: 200,
          //有限循环纶播图，1滑倒3就划不动了。
          child: PageView(
            children: list,
          ),
        ));
  }
}
