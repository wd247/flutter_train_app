import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

//test
class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('build 호출됨');
    return Scaffold(
      appBar: AppBar(
        title: Text('test app'),
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(
            fontSize: 100,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
          print('카운터 증가됨 : $counter');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
