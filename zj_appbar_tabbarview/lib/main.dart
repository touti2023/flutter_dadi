import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去掉右上角debug标识
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 162, 131, 215)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数：初始化时就会触发
  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //左侧图标 三横杠
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          //顶部颜色
          backgroundColor: Color.fromARGB(255, 26, 233, 102),
          title: Text("lost temple"),
          //右侧顶部图标
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)), //搜索
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)), //e更多
          ],
          bottom: TabBar(
            isScrollable: true, //缩距，可以滑动
            indicatorColor: Colors.white, //高亮选项
            indicatorWeight: 2, //高亮线的粗度
            indicatorPadding: const EdgeInsets.all(5), //高亮线四周间距
            indicatorSize: TabBarIndicatorSize.label, //同步字，提示线长度
            // indicator: const BoxDecoration(
            // //   color: Colors.blue, //提示器变方框
            // ),
            labelColor: Colors.red, //上方菜单选中变色
            controller: _tabController,
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
            ],
          )),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: const [
            ListTile(
              title: Text("关注列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("热门列表"),
            ),
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("视频列表"),
            ),
          ],
        ),
      ]),
    );
  }
}
