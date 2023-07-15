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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

class _MyHomePageState extends State<MyHomePage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                flag = !flag;
              });
            }),
        appBar: AppBar(
          title: Text("占いの屋"),
        ),
        body: Center(
          child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 170,
              color: Colors.blue,
              child: AnimatedSwitcher(
                //放大缩小的效果
                transitionBuilder: ((child, animation) {
                  return ScaleTransition(
                      scale: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ));
                }),
                duration: Duration(seconds: 1),
                child: flag
                    ? CircularProgressIndicator()
                    : Image.network(
                        "https://wowheureka.files.wordpress.com/2023/06/wow-boss-compilation-wallpaperjpg-dc3b63.jpg?w=1038&h=576&crop=1",
                        fit: BoxFit.cover,
                      ),
              )),
        ));
  }
}
