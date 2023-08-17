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
            appBar: AppBar( title: Text('앱제목') ),
            body: Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,height: 50,
                margin: EdgeInsets.all(20),
                // margin: EdgeInsets.fromLTRB(left, top, right, bottom)
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), //컬러중복은 안됨
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
            ),
      );
  }
}
