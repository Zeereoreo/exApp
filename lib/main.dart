import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      home:MyApp()
  ));
}




class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

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
                        return Dialog(
                          child: Container(
                            width: 300,
                            height: 300,
                            child: Column(
                              children: [
                                TextField(),
                                TextButton( child: Text('완료'), onPressed:(){} ),
                                TextButton(
                                    child: Text('취소'),
                                    onPressed:(){ Navigator.pop(context); })
                              ],
                            ),
                          ),
                        );
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