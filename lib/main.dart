import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '기차 예매',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                color: Colors.white,
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 수평 정렬
                    children: [
                      // 첫 번째 Column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
                        children: [
                          Text('출발역', style: TextStyle(fontSize: 16)),
                          Text('선택', style: TextStyle(fontSize: 50)),
                        ],
                      ),
                      // 두 번째 Column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
                        children: [
                          Text('도착역', style: TextStyle(fontSize: 16)),
                          Text('선택', style: TextStyle(fontSize: 50)),
                        ],
                      ),
                    ])),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 400,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: Text(
                  '좌석 선택',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
