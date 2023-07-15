import 'dart:async';

import 'package:flutter/material.dart';

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<String> list;
  const Swiper(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.list});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  //加滑动小圆点
  int _currentIndex = 0;
  List<Widget> pageList = [];
  late PageController _pagecontroller;
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (var i = 0; i < widget.list.length; i++) {
      pageList.add(ImagePage(
          width: widget.height, height: widget.height, src: widget.list[i]));
    }
    _pagecontroller = PageController(initialPage: 0);

    timer = Timer.periodic(Duration(seconds: 3), (t) {
      _pagecontroller.animateToPage((_currentIndex + 1) % pageList.length,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    _pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          //无限循环纶播图，1滑倒3继续滑回1。
          child: PageView.builder(
            controller: _pagecontroller,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index % pageList.length;
              });
            },
            itemCount: 1000,
            itemBuilder: (context, index) {
              return pageList[index % pageList.length];
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
                  pageList.length,
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
    );
  }
}

class ImagePage extends StatelessWidget {
  //添加变量，可传入参数
  final double width;
  final double height;
  final String src;

  const ImagePage(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.src});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Image.network(src,
          //平铺图片
          fit: BoxFit.cover),
    );
  }
}
