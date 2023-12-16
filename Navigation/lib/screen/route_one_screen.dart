import 'package:flutter/material.dart';
import 'package:navigation/screen/route_two_screen.dart';
import '../layout/main_layout.dart';

class RouteOneScreen extends StatelessWidget {
  const RouteOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route One', children: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Pop'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => RouteTwoScreen(),
              settings: RouteSettings(
                arguments: 789,
              )));
        },
        child: Text('Push'),
      ),
    ]);
  }
}
