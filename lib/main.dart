import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

var a = SizedBox(
  child: Text('안녕'),
);
// 이렇게 변수에 담아도 상관없지만 나중에 성능 이슈 생김
// 절대 변하지 않는 것들은 변수로도 사용 가능 (상당바, 하단바 등등)


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(),
            body: ListView( //스크롤바 생김 , 메모리 절약 가능 (지나간 메모리 삭제)
              controller: ScrollController(),//스크롤 위치 감시
              children: const [
                // ListTile(
                //   leading: Image.asset('assets/profile.png'),
                //   title: Text('홍길동'),
                // )
                // ListTile 사용법
              ],
            ),
          )
      );
  }
}



// 1. 커스텀 위젯은 clss로 만든다. class : 변수 함수 보관함
// 2. extends 오른쪽에 있는 변수 복사
// 3. 파라미터 넣을 수 있는거 정의
// 4. class 안에 build 라는 함수 만들어 놈 그리고 리턴 값
// ** @overide -> StatelessWidget 안에 있는 중복들을 내거먼저 적용하기 위함

//커스텀 위젯 만드는 방법 : stless + enter / 작명 / 리턴에 레이아웃 넣기
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Text('안녕'),
    );
  }
}

// 커스텀 위젯 단점이 있기 때문에 재사용이 많은 UI or 큰 페이지들

