import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text(
        "谢老师传奇",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    body: Container(
      child: const XLS(),
    ),
  )));
}

class XLS extends StatelessWidget {
  const XLS({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          width: 500,
          height: 600,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 0, 0, 0.098),
          ),
          child: const Center(
              child: Text(
            '''
    在古老的世界里，有一位名叫谢老师的智者。他拥有超凡的智慧和神奇的力量，被人们称为传奇中的传奇。
    谢老师从小就展现出非凡的才智。他渴望知识，勤奋学习各种学科，潜心研究神秘的法术和古老的智慧。通过深入的思考和不懈的努力，他掌握了许多神奇的能力。
    人们来向谢老师寻求帮助，他总是慷慨地分享智慧和力量。他帮助农民预测天气，使他们能够合理安排农作物的种植。他治愈了无数的疾病，为人们带来了健康和幸福。
    然而，谢老师的力量引起了嫉妒和恶意。一些邪恶的势力觊觎他的力量，试图将其束缚。但谢老师总是能够化解危机，保护自己和他人免受伤害。
随着时间的推移，谢老师的声誉传遍了整个大陆。人们把他当作传说中的英雄，敬仰他的智慧和善良。他的名字成为人们心中的希望和勇气的象征。
    最终，当谢老师感觉自己的使命已经完成时，他选择了隐退。他把他的智慧和力量传承给下一代，让他们继续他的事业。尽管他不再亲自出现在人们的世界里，但他的传奇将永远铭刻在人们的记忆中。
谢老师的传奇告诉我们，智慧和力量应该用来造福他人。他的善良和奉献精神激励着人们追求更高的境界。他的故事将一直传颂下去，激发人们追求知识和成就伟大事业的勇气和决心。
''',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ))),
    );
  }
}

class ZDX extends StatelessWidget {
  const ZDX({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromRGBO(241, 23, 15, 0.898),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
              child: Text(
            "谢老师真tnnd屑！",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis,
              fontSize: 15,
            ),
          ))),
    );
  }
}
