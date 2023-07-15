import 'package:flutter/material.dart';

//自定义Dialog
class MyDialog extends Dialog {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        //背景透明
        type: MaterialType.transparency,
        //Center才能使下面的尺寸生效
        child: Center(
          child: Container(
            height: 240,
            width: 240,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "提示!",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Icon(Icons.close),
                            onTap: () {
                              print("close");
                              Navigator.pop(context);
                            },
                          )),
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: const Text(
                    "我是一个提示信息",
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
