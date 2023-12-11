import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          //중간에 위치
          mainAxisAlignment: MainAxisAlignment.center,
          //최대 사이즈 조정
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              //onPressed: null 인경우 버튼 비활성화 됨
              onPressed: () {},
              style: ButtonStyle(
                //Material State
                //hovered - 마우스 커서를 올려 놓은 상태
                //focused - 포커스 됐을 때
                //pressed - 눌렸을 때
                //dragged - 드래그 됐을 때
                //selected - 선택 됐을 때
                //scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                //disabled - 비활성화 됐을 때
                //error - 에러 상태
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      //눌렀을 때 색 변경
                      if(states.contains(MaterialState.pressed)){
                        return Colors.white;
                      }
                      return Colors.red;
                    }
                )
              ),
              child: Text(
                'Button Style',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  //글자 및 애니메이션 색깔
                  foregroundColor: Colors.black,
                  shadowColor: Colors.green,
                  //3D 입체감의 높이
                  elevation: 10.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(32.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  )),
              child: Text(
                'ElevatedButton',
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.yellow,
              ),
              child: Text(
                'OutLinedButton',
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
                backgroundColor: Colors.blue,
              ),
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
