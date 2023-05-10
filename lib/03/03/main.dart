import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          child: LoopLayout(),
        ));
  }
}

class LoopLayout extends StatelessWidget {
  const LoopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        // 如果想控制占据宽度的比例，实现1:2:3，按如下代码使用
        Expanded(
          flex: 1,
          child: ColoredBox(
            color: Colors.red,
          ),
        ),
        Spacer(),
        Expanded(
          flex: 2,
          child: ColoredBox(
            color: Colors.cyanAccent,
          ),
        ),
        Expanded(
          flex: 3,
          child: ColoredBox(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}