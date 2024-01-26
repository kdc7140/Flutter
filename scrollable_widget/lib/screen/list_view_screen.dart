import 'package:flutter/material.dart';
import 'package:scrollable_widget/const/colors.dart';
import 'package:scrollable_widget/layout/main_layout.dart';

class ListViewScreen extends StatelessWidget {
  final List<int> numbers = List.generate(100, (index) => index);

  ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'ListViewScreen',
      body: ListView.separated(
        itemBuilder: (context, index) {
          return renderContainer(
            color: rainbowColors[index % rainbowColors.length],
            index: index,
          );
        },
        separatorBuilder: (context, index) {
          return renderContainer(
            color: Colors.black,
            index: index,
          );
        },
      ),
    );
  }

  Widget renderDefault() {
    return ListView(
        children: numbers
            .map(
              (e) => renderContainer(
                color: rainbowColors[e % rainbowColors.length],
                index: e,
              ),
            )
            .toList());
  }

  Widget renderBuilder() {
    return ListView.builder(itemBuilder: (context, index) {
      return renderContainer(
          color: rainbowColors[index % rainbowColors.length], index: index);
    });
  }

  Widget renderContainer({
    required Color color,
    required int? index,
  }) {
    print(index);

    return Container(
        height: 300,
        color: color,
        child: Center(
          child: Text(
            index.toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
          ),
        ));
  }
}
