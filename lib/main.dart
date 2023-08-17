import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      home:MyApp()
  ));
}



class DialogUI extends StatelessWidget {
  const DialogUI({super.key, this.state});
  final state; // 부모에서 온 state 등록 방법

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
          children: [
          TextField(),
          TextButton( child: Text(state.toString()), onPressed:(){} ),
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

  var a = 1;
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
                        return DialogUI(state:a);
                      });
                    },
                  );
                }
              ),
              appBar: AppBar(),
              body: Container(),
              // body: Dialog(child: Text('다이아로그'),),//이대로 치면 바로 나옴
          );

  }
}