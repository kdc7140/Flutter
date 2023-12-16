import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(title: 'Route Two', children: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Pop'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            '/three',
            arguments: 999,
          );
        },
        child: Text('Push Named'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => RouteThreeScreen(),
            ),
          );
        },
        child: Text('Push Replacement'),
      ),
      ElevatedButton(
        onPressed: () {
          // [Home_Screen(), Route One(), Route Two(), Route Three()]
          // 위 상태에서 route name이 '/' 인 것을 찾을 때까지 스택을 지움
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => RouteThreeScreen(),
            ),
            (route) => route.settings.name == '/',
          );
        },
        child: Text('Push And Remove Until'),
      ),
    ]);
  }
}
