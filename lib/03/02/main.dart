import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoopLayout()));
}

class LoopLayout extends StatelessWidget {
  const LoopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        SizedBox(
          width: 50,
          child: ColoredBox(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: ColoredBox(
            color: Colors.cyanAccent,
          ),
        ),
        // 自动撑开,一个空白的部分
        // Spacer(),
        SizedBox(
          width: 50,
          child: ColoredBox(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}