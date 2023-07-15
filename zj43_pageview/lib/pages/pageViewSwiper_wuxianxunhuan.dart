import 'package:flutter/material.dart';
import './widget/image.dart';

class PageViewSwiper_wuxianxunhuan extends StatefulWidget {
  const PageViewSwiper_wuxianxunhuan({super.key});

  @override
  State<PageViewSwiper_wuxianxunhuan> createState() =>
      _PageViewSwiper_wuxianxunhuanState();
}

class _PageViewSwiper_wuxianxunhuanState
    extends State<PageViewSwiper_wuxianxunhuan> {
  //创建集合传图
  List<Widget> list = [];

  //加滑动小圆点
  int _currentIndex = 0;

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
        body: Stack(
          children: [
            SizedBox(
              height: 200,
              //无限循环纶播图，1滑倒3继续滑回1。
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index % list.length;
                  });
                },
                itemCount: 1000,
                itemBuilder: (context, index) {
                  return list[index % list.length];
                },
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      list.length,
                      (index) => Container(
                            margin: EdgeInsets.all(5),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: _currentIndex == index
                                    ? Colors.blue
                                    : Colors.grey,
                                shape: BoxShape.circle),
                          )).toList(),
                ))
          ],
        ));
  }
}
