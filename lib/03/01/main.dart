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
          // height: 50,
          // height: double.infinity,
          child: ColoredBox(
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 50,
          // height: 50,
          // height: double.infinity,
          child: ColoredBox(
            color: Colors.cyanAccent,
          ),
        ),
        SizedBox(
          width: 50,
          // height: 50,
          // height: double.infinity,
          child: ColoredBox(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}