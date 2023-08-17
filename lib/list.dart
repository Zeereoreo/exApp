import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      home:MyApp()
  ));
}



class DialogUI extends StatelessWidget {
  DialogUI({super.key, this.addOne});
  final addOne; // 부모에서 온 state 등록 방법
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
            TextField( onChanged: (text){inputData = text},),
            // TextField(controller: inputData,),
            TextButton( child: Text('완료'), onPressed:(){
              addOne();
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
                    return DialogUI(addOne:addOne);
                  });
                },
              );
            }
        ),
        appBar: AppBar( title: Text(total.toString()),),
        body: Container(),
        // body: Dialog(child: Text('다이아로그'),),//이대로 치면 바로 나옴
      );

  }
}