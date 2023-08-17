import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      home:MyApp()
  ));
}



class DialogUI extends StatelessWidget {
  DialogUI({super.key, this.addOne,this.addName});
  final addOne; // 부모에서 온 state 등록 방법
  final addName;
  var inputData = TextEditingController();
  var inputData2 = {};

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
          children: [
            TextField( controller: inputData,),
          // TextField(controller: inputData,),
            TextButton( child: Text('완료'), onPressed:(){
            addOne();
            addName(inputData.text);
            Navigator.pop(context);
          } ),
          TextButton(
          child: Text('취소'),
          onPressed:(){ Navigator.pop(context); })
          ],
          ),
        ),
    );
  }
}




class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var total = 3;
  var a = 1;
  var name = ['김영숙','홍길동','피자집'];
  var like = [0,0,0];

  //부모state를 자식이 수정하려면 1.수정함수 만들기 2.자식에게보내기

  addName(a){
    setState(() { //setState 까먹지말기
      name.add(a);
    });
  }

  addOne(){
    setState(() {
      total++;
    });
  }

  //부모(myapp에 있는 state 쓰는법)
  //쓸 커스텀위젯에 props해주고
  //커스텀 위젯에 등록해주고(this.state)
  //사용하기

  @override
   build(context) {
    //context란 부모위제가 누구인지 알려줌
    //지금은 Material이 부모
    return
       Scaffold(
              floatingActionButton: Builder(
                builder: (newContext) { // 이것의 부모는 Material,scaffold
                  return FloatingActionButton(
                    onPressed: () {
                      print(context.findAncestorWidgetOfExactType<MaterialApp>());
                      showDialog(context: context, builder: (context){
                        return DialogUI(addOne:addOne,addName: addName);
                      });
                    },
                  );
                }
              ),
              appBar: AppBar( title: Text(total.toString()),),
               body: ListView.builder( //Listview 반복문
                   itemCount: name.length, // 몇 번 반복 할 것인지
                   itemBuilder: (c,i){// 함수 입력 두가지 파라미터 꼭 입력 (context : , i: 반복할 때마다 +1씩 증가)
                     print(i); // console 찍는 방법
                     return ListTile(
                       leading: Text('프로필'),
                       title: Text(name[i]),
                     ); // 반복 할 위젯
                   }
               ),
              // body: Dialog(child: Text('다이아로그'),),//이대로 치면 바로 나옴
          );

  }
}