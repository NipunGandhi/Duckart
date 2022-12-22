import 'package:duckart/donation_screen.dart';
import 'package:flutter/material.dart';

class CreatorWidget extends StatelessWidget {
  const CreatorWidget({
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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
