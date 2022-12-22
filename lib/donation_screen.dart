import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({
    Key? key,
    required this.userName,
    required this.profileUrl,
    required this.id,
  }) : super(key: key);
  static const String name = "DonationScreen";
  final String userName;
  final String profileUrl;
  final String id;
  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
