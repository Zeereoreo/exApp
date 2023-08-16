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
            body: Text('안녕'),
            bottomNavigationBar: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page) ]
            ),
          )
      );
  }
}