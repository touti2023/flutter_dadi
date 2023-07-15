import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello"),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, //按钮居中
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("普通按钮")),
          TextButton(onPressed: () {}, child: const Text("文本按钮")),
          OutlinedButton(onPressed: () {}, child: const Text("边框按钮")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up))
        ],
      ),

      //普通按钮生成带图表按钮，icon函数。
      const SizedBox(
        height: 20,
      ), //间隔
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, //居中
        children: [
          ElevatedButton.icon(
              //普通图标按钮
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text("发送")),
          TextButton.icon(
              //文本图标按钮
              onPressed: () {},
              icon: const Icon(Icons.sailing),
              label: const Text("data")),
          OutlinedButton.icon(
              //边框图标按钮
              onPressed: () {},
              icon: const Icon(Icons.send_and_archive),
              label: const Text("增加")),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orange), //背景颜色
                  foregroundColor: MaterialStatePropertyAll(Colors.black) //文字颜色
                  ),
              onPressed: () {},
              child: const Text("哦你讲"))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            //外部容器控制按钮尺寸
            height: 60,
            width: 200,
            child: ElevatedButton(onPressed: () {}, child: const Text("大按钮")),
          )
        ],
      ),
      Row(
        //自适应填满
        children: [
          Expanded(
              flex: 1, //充满
              child: Container(
                margin: EdgeInsets.all(20), //边距
                height: 60,
                width: 200, //有自动填充，宽度会失效。
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 7, 7, 7))),
                    child: const Text("大按钮")),
              ))
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              //按钮大小
              width: 120,
              height: 60,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(//圆角
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {},
                  child: const Text("圆角按钮"))),
          Container(
            height: 100,
            width: 100,
            child: ElevatedButton(
              style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(//圆形
                      CircleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 238, 15, 15))))), //圆边框
              onPressed: () {},
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '"圆形按钮"',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      )
    ]);
  }
}
