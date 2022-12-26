import 'package:duckart/Provider/my_controller.dart';
import 'package:duckart/Screens/donation_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatorWidget extends StatelessWidget {
  CreatorWidget({
    Key? key,
    required this.userName,
    required this.profileUrl,
    required this.profession,
    required this.id,
  }) : super(key: key);
  final String userName;
  final String profileUrl;
  final String profession;
  final String id;

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        myController.dataOfCreator.id = id;
        myController.dataOfCreator.profession = profession;
        myController.dataOfCreator.profileUrl = profileUrl;
        myController.dataOfCreator.userName = userName;
        Navigator.pushNamed(
          context,
          DonationScreen.name,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              profileUrl,
              fit: BoxFit.cover,
              height: 140,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    profession,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
