// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "皮卡丘",
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: Text("kk App")),
//         body: HomePage(),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 4, //一行几个图标
//       children: const [
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//         Icon(Icons.pedal_bike),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "皮卡丘",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("kk App")),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        //行
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //靠左。居中。靠右
        children: [
          IconContainer(Icons.home, Colors.orange),
          IconContainer(Icons.search, Colors.blue),
          IconContainer(Icons.ac_unit_sharp, Colors.purple),
        ],
      ),
    );
  }
}

//自定义 IconContainer 容器
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      color: color,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
