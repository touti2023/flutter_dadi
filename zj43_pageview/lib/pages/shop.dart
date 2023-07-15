import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  final Map arguments;
  const ShopPage({super.key, required this.arguments});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("shop"),
      ),
      body: const Center(
        child: Text("shop页面"),
      ),
    );
  }
}
