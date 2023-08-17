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
            body: Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset('camera.jpg', width: 150,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('카메라팝니다', style: TextStyle(),),
                        Text('금호동 3가'),
                        Text('7000'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite),
                            Text('4'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

          )
      );
  }
}
