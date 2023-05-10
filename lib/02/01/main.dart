import 'package:flutter/material.dart';

void main() {
  runApp(
    const LayoutBuilder(builder: _buildByLayout)
  );
}

Widget _buildByLayout(BuildContext context, BoxConstraints constraints) {
  print(constraints);
  return Container(
    width: 100,
    height: 100,
    color: Colors.red,
  );
}