import 'package:duckart/Model/data.dart';
import 'package:duckart/Widgets/creator_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4904DA),
      ),
      body: GridView.count(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(abc.length, (index) {
          return CreatorWidget(
            id: abc[index].id.toString(),
            userName: abc[index].userName.toString(),
            profileUrl: abc[index].profileUrl.toString(),
            profession: abc[index].profession.toString(),
          );
        }),
      ),
    );
  }
}
