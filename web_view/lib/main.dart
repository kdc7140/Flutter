import 'package:flutter/material.dart';
import 'package:web_view/screen/home_screen.dart';

void main() {
  //Flutter 프레임워크가 실행 준비가 완료될 때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}


