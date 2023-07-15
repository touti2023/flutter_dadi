import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _globalKey = GlobalKey<AnimatedListState>();
  List<String> list = ["第一条", "第二条"];

  Widget _buildItem(index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
          onPressed: () {
            //执行删除
            _deleteItem(index);
          },
          icon: Icon(Icons.delete)),
    );
  }

  _deleteItem(index) {
    print("删除的索引$index");
    //执行删除
    _globalKey.currentState!.removeItem(index, (context, animation) {
      var removeItem = _buildItem(index);
      list.removeAt(index);
      return FadeTransition(
        opacity: animation,
        child: removeItem,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            list.add("我是新增的数据");
            //定义上面 _globalKey 时，如果没有GlobalKey<AnimatedListState>，无法调用。
            _globalKey.currentState!.insertItem(list.length - 1);
          },
        ),
        //增删时才会出发下面动画，渐入
        body: AnimatedList(
            key: _globalKey,
            initialItemCount: list.length,
            itemBuilder: ((context, index, animation) {
              return FadeTransition(
                opacity: animation,
                child: _buildItem(index),
              );
            })));
  }
}
