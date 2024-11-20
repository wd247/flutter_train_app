import 'package:flutter/material.dart';

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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 수평 정렬
                    children: [
                      // 첫 번째 Column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
                        children: [
                          Text('출발역',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          Text('선택', style: TextStyle(fontSize: 50)),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 50,
                        color: Colors.grey[400],
                      ),

                      // 두 번째 Column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center, // 수직 정렬
                        children: [
                          Text('도착역',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          Text('선택', style: TextStyle(fontSize: 50)),
                        ],
                      ),
                    ])),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
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
