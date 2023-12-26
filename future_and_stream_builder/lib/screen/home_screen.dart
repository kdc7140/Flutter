import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 16.0,
    );

    return Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) {
          return Column(
            children: [
              Text(
                'FutureBuilder',
                style: textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              )
            ],
          );
        },
        future: null,
      ),
    );
  }

  Future<int> getNumber() async{
    await Future.delayed(Duration(seconds: 3));

    final random = Random();

    return random.nextInt(100);
  }
}
