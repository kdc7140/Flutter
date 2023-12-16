import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        final canPop = Navigator.of(context).canPop();

        return canPop;
      },
      child: MainLayout(title: 'Home Screen', children: [
        ElevatedButton(
          onPressed: () {
            //pop이 가능한지 여부 반환 true/false
            Navigator.of(context).canPop();
          },
          child: Text('Can Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            //뒤로 돌아갈 페이지가 있으면 pop 실행
            Navigator.of(context).maybePop();
          },
          child: Text('Maybe Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(),
              ),
            );
          },
          child: Text('Push'),
        ),
      ]),
    );
  }
}
