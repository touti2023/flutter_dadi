import 'package:flutter/material.dart';

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
