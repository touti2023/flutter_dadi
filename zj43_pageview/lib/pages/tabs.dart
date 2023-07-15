import 'package:flutter/material.dart';
import './tabs/category.dart';
import './tabs/home.dart';
import './tabs/settings.dart';
import './tabs/user.dart';
import './tabs/message.dart';

//下部导航选中动态效果实现
// ignore: camel_case_types
class tabs extends StatefulWidget {
  final int index;
  const tabs({super.key, this.index = 0});

  @override
  State<tabs> createState() => _tabsState();
}

// ignore: camel_case_types
class _tabsState extends State<tabs> {
  //定义一个值接收被按下的索引值。
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    MessagePageState(),
    SettingPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 244, 72, 72), //顶部颜色
        title: const Text("Apple"),
      ),
      drawer: const Drawer(
          child: Column(
        children: [
          Row(
            //拉满头部
            children: [
              Expanded(
                child: DrawerHeader(
                    decoration: BoxDecoration(
                        //color: Color.fromARGB(255, 32, 207, 219),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/1.png"),
                            fit: BoxFit.cover)), //图片铺满
                    child: Text("头部")),
              )
            ],
          ),
          //避免顶格
          ListTile(
            //圆形
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text("个人中心"),
          ),
          Divider(),
          ListTile(
            //圆形
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text("系统设置"),
          ),
          Divider(),
        ],
      )),

      body: _pages[_currentIndex], //***数组内容即为索引选中效果。
      //底部导航
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: const Color.fromARGB(211, 24, 161, 14), //底部选中颜色
          iconSize: 35, //底部组件尺寸
          type: BottomNavigationBarType.fixed, //底部菜单4个以上时必须设置********
          currentIndex: _currentIndex, //第几个菜单被选中
          onTap: (index) {
            //点击菜单触发的方法
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "用户"),
          ]),
      //凸起按钮
      floatingActionButton: Container(
        height: 70,
        width: 70,
        padding: const EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10), //调整位置
        decoration: BoxDecoration(
            color: Color.fromRGBO(234, 234, 230, 1),
            borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
            elevation: 0.5,
            //三目运算改变按键颜色
            backgroundColor: _currentIndex == 2 ? Colors.green : Colors.blue,
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            }),
      ),
      floatingActionButtonLocation:
          //咸鱼中凸按钮
          FloatingActionButtonLocation.centerDocked, //配置浮动按钮位置
    );
  }
}
