import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  //async 外层获得打印结果
  void _alertDialog() async {
    //确认/取消
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("提示信息!"),
              content: Text("您确定要删除吗?"),
              actions: [
                TextButton(
                    onPressed: () {
                      print("ok");
                      Navigator.of(context).pop("ok");
                    },
                    child: Text("确定")),
                TextButton(
                    onPressed: () {
                      print("cancel");
                      Navigator.of(context).pop("取消");
                    },
                    child: Text("取消")),
              ]);
        });
    print(result);
  }

  void _simpleDialog() async {
    //三选一
    var result = await showDialog(
        barrierDismissible: false, //默认true，点击灰色背景弹框消失，现在不会消失。
        context: context,
        builder: (context) {
          return SimpleDialog(title: Text("请选择语言"), children: [
            Divider(),
            SimpleDialogOption(
              onPressed: () {
                print("chinese");
                Navigator.of(context).pop("汉语");
              },
              child: Text("汉语"),
            ),
            Divider(),
            SimpleDialogOption(
              onPressed: () {
                print("English");
                Navigator.of(context).pop("英语");
              },
              child: Text("英语"),
            ),
            Divider(),
            SimpleDialogOption(
              onPressed: () {
                print("Japanese");
                Navigator.of(context).pop("日语");
              },
              child: Text("日语"),
            ),
          ]);
        });
    print(result);
  }

  void _modalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text("分享"),
                    onTap: () {
                      print("分享");
                      Navigator.of(context).pop("分享");
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("收藏"),
                    onTap: () {
                      print("收藏");
                      Navigator.of(context).pop("收藏");
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("取消"),
                    onTap: () {
                      print("取消");
                      Navigator.of(context).pop("取消");
                    },
                  ),
                  Divider(),
                ],
              ));
        });
    print(result);
  }

  void _toast() {
    //过一段时间消失的弹窗
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT, //只针对安卓可用
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1, //只针对ios 和 web
        backgroundColor: const Color.fromARGB(255, 20, 19, 19),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dislog"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: _alertDialog,
                child: const Text("alert弹出框-AlertDialog")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _simpleDialog,
                child: const Text("simpleDialog-三选一")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _modalBottomSheet, child: const Text("底部弹出框")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _toast, child: const Text("toast")),
            const SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}
