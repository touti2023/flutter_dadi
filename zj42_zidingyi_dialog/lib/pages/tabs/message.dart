import 'package:flutter/material.dart';

class MessagePageState extends StatefulWidget {
  const MessagePageState({super.key});

  @override
  State<MessagePageState> createState() => _MessagePageStateState();
}

class _MessagePageStateState extends State<MessagePageState> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("消息组件"),
    );
  }
}
