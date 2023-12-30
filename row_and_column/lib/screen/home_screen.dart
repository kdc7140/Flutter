import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              //MainAxisAlignment - 주축 정렬
              //start - 시작
              //end - 끝
              //center - 중앙
              //spaceBetween - 위젯과 위젯의 사이가 동일하게 배치
              //spaceEvenly - Between과 성질은 같지만 양 끝도 빈 간격으로 시작함
              //spaceAround - spaceEvenly + 양 끝은 1/2
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              //crossAxisAlignment - 반대축 정렬
              //start - 시작
              //end - 끝
              //center - 중앙
              //stretch - 최대한으로 늘림
              // crossAxisAlignment: CrossAxisAlignment.start,

              //MainAxisSize - 주축 크기
              //max - 최대
              //min - 최소
              // mainAxisSize: MainAxisSize.min,
              children: [
                // Expanded, Flexible - Column이나 Row Widget에 children에서만 사용 가능
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50.0,
                      height: 50.0,
                    ),
                    Container(
                      color: Colors.orange,
                      width: 50.0,
                      height: 50.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 50.0,
                      height: 50.0,
                    ),
                    Container(
                      color: Colors.green,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.orange,
                      width: 50.0,
                      height: 50.0,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50.0,
                      height: 50.0,
                    ),
                    Container(
                      color: Colors.orange,
                      width: 50.0,
                      height: 50.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 50.0,
                      height: 50.0,
                    ),
                    Container(
                      color: Colors.green,
                      width: 50.0,
                      height: 50.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 50.0,
                      height: 50.0,
                    )
                  ],
                ),

              ],
            ),
          ),
        )
    );
  }
}