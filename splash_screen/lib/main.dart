import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //상단 debug 라인 제거
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 색상 지정
      backgroundColor: Color(0xFF17AEE2),
      body: Column(
        //위치 정렬
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/img/flutter.png',
          ),
          //Indicator
          CircularProgressIndicator(
            color : Colors.white,
          ),
        ],
      )
    );
  }
}
