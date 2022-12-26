import 'package:duckart/Model/data.dart';
import 'package:duckart/Screens/profile_page.dart';
import 'package:duckart/Widgets/creator_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4904DA),
        title: const Text("T I O B U"),
        elevation: 1,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_outlined,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProfilePage.name);
            },
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://cdn4.iconfinder.com/data/icons/instagram-ui-twotone/48/Paul-17-512.png",
              ),
            ),
          ),
        ],
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
