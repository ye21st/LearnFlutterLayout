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
      children: [
        // 如果想控制占据宽度的比例，实现1:2:3，按如下代码使用
        Expanded(
          flex: 1,
          child: buildLeft(),
        ),
        Expanded(
          flex: 4,
          child: _buildCenter()
        ),
        Expanded(
          flex: 1,
          child: buildRight(),
        ),
      ],
    );
  }
}

Widget buildLeft() => Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: const [
    Icon(Icons.drive_file_rename_outline, color: Colors.blue),
    Icon(Icons.spellcheck),
    Icon(Icons.format_size),
    Icon(Icons.addchart),
    Icon(Icons.delete_sweep),
    Icon(Icons.skip_next),
  ],
);

Widget buildRight() => Align(
  alignment: Alignment.topCenter,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 80, bottom: 8),
        child: Container(
          width: 34,
          height: 34,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 3, color: Colors.blue)
            ]
          ),
          child: Image(
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
      Text('测试布局', style: TextStyle(
        color: Colors.blue,
        fontSize: 12,
        fontWeight: FontWeight.bold
      )),
      Spacer(),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Icon(
          Icons.contact_support,
          color: Colors.red,
        ),
      )
    ],
  ),
);

Widget _buildCenter() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
          flex: 1,
          child: _buildTop()
      ),
      Expanded(
          flex: 4,
          child: _buildCenterPanel()
      ),
      Expanded(
          flex: 1,
          child: _buildFoot()
      ),
    ],
  );
}

Widget _buildTop() {
  return Center(
    child: Text(
      '熊猫',
      style: TextStyle(
        color: Colors.indigo,
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}

Widget _buildCenterPanel() {
  return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          opacity: 0.5,
          image: AssetImage('assets/images/panda.png'),
          fit: BoxFit.fitHeight
        )
      ),
      child: Center(
        child: Text(
          """
望见熊猫真可爱，肥胖圆滚毛色佳
天生一副黑白衣，憨态可掬似宝贝
低头嗅嗅竹叶香，悠然自得独行藏
睡眼朦胧不耐烦，嬉戏玩耍萌态珍
举手投足自然稳，萌宠可爱见真情
          """
        ,style: TextStyle(
          fontSize: 16,
          shadows: [
            Shadow(color: Colors.black, blurRadius: 1, offset: Offset(0, 1))
          ],
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
  );
}

Widget _buildFoot() {
  TextStyle style = TextStyle(fontSize: 12, color: Colors.black);
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text('ye21st', style: style,),
      Text('2023年05月10日16:09:56', style: style,)
    ],
  );
}