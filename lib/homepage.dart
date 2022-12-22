import 'package:duckart/creator_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            children: const <Widget>[
              CreatorWidget(
                userName: "BB Ki Vines",
                profileUrl:
                    "https://www.koimoi.com/wp-content/new-galleries/2021/10/bhuvan-bam-reveals-singing-in-bars-before-youtube-fame-001.jpg",
                profession: "Youtuber",
                id: 'C1',
              ),
              CreatorWidget(
                userName: "BB Ki Vines",
                profileUrl:
                    "https://www.koimoi.com/wp-content/new-galleries/2021/10/bhuvan-bam-reveals-singing-in-bars-before-youtube-fame-001.jpg",
                profession: "Youtuber",
                id: 'C1',
              ),
              CreatorWidget(
                userName: "BB Ki Vines",
                profileUrl:
                    "https://www.koimoi.com/wp-content/new-galleries/2021/10/bhuvan-bam-reveals-singing-in-bars-before-youtube-fame-001.jpg",
                profession: "Youtuber",
                id: 'C1',
              ),
              CreatorWidget(
                userName: "BB Ki Vines",
                profileUrl:
                    "https://www.koimoi.com/wp-content/new-galleries/2021/10/bhuvan-bam-reveals-singing-in-bars-before-youtube-fame-001.jpg",
                profession: "Youtuber",
                id: 'C1',
              ),
            ],
          )),
    );
  }
}
