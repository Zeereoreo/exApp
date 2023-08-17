import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(),
            body: Row(
              children: [
                Expanded(child: Container(color: Colors.blue)),
                Flexible(flex: 7, child: Container(color: Colors.green)),
                //비율에 따라 박스를 넣고 싶을 떄 사용 Column,Row에서 사용
                //Expanded는 나머지 꽉 채우고 싶을 때 사용
              ],
            ),
          )
      );
  }
}
