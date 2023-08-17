import 'package:flutter/material.dart';

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
            appBar: AppBar( actions: [Icon(Icons.star),Icon(Icons.star)], title: Text('앱제목'), leading: Icon(Icons.star)),
            // title : 왼쪽 제목, leading : 왼쪽에 넣을 아이콘 , actions [우측아이콘들]
            body: SizedBox(
              child: Text('안녕하세요', //파라미터 끝날 떄 콤마 잊지말기 
                // style: TextStyle( color : Color.fromRGBO(r, g, b, opacity) 컬러
                // style: TextStyle(fontWeight: FontWeight.w700), 글자 크기
                // child: Icon(Icons.star, size:20,)아이콘은 사이즈가 끝
                // child: ElevatedButton( child: Text('버튼'),
                //   onPressed:  (){},
                //   style: ,
                // ) 버튼 넣는 방법 TextButton(),IconButton(),ElevatedButton()
              ),
            ),
            ),

            // body: Text('안녕'),
            // bottomNavigationBar: SizedBox(
            //   height: 50,
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [ Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page) ]
            //   ),
            
      );
  }
}
