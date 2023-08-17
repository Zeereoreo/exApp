import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

var a = SizedBox(
  child: Text('안녕'),
);
// 이렇게 변수에 담아도 상관없지만 나중에 성능 이슈 생김
// 절대 변하지 않는 것들은 변수로도 사용 가능 (상당바, 하단바 등등)


// stfull + enter  state 함수 만드는법
// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }



class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //state 만드는 법
  // 1. StatefulWiget 만들기
  // 2. 둘째 class 안에 변수 만들기
  // state 변경하려면 setState((){}) 사용
  var a = 1; // 이게 state
  var name = ['하이','하이2','하이3'];
  var like = [0,0,0];

  // 데이터를 잠깐 저장하는 곳 : 변수 아니면 state
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          home: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Text(a.toString()), // 재렌더링이 안됨 이대로면
              onPressed: (){
                setState(() {
                  a++;
                });
                // print(a);
                // a++; // 함수 값
              },
            ),
            appBar: AppBar(title: Text('연락처앱'),),
            body: ListView.builder( //Listview 반복문
                itemCount: 3, // 몇 번 반복 할 것인지
                itemBuilder: (context,i){// 함수 입력 두가지 파라미터 꼭 입력 (context : , i: 반복할 때마다 +1씩 증가)
                  print(i); // console 찍는 방법
                  return ListTile(
                          leading: Text(like[i].toString()),
                          title: Text(name[i]),
                          trailing: TextButton(
                            child: Text('좋아요'),
                            onPressed: (){
                              setState(() {
                                like[i]++;
                              });
                            },
                          ),
                        ); // 반복 할 위젯
                }
            ),
          //   body: ListView( //스크롤바 생김 , 메모리 절약 가능 (지나간 메모리 삭제)
          //     controller: ScrollController(),//스크롤 위치 감시
          //     children: const [
          //       // ListTile(
          //       //   leading: Image.asset('assets/profile.png'),
          //       //   title: Text('홍길동'),
          //       // )
          //       // ListTile 사용법
          //     ],
          //   ),
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

