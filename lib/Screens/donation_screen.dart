import 'package:duckart/Model/data.dart';
import 'package:duckart/Screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Provider/my_controller.dart';

class DonationScreen extends StatefulWidget {
  static const String name = "DonationScreen";

  const DonationScreen({super.key});
  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  final MyController _instance = Get.find();

  String dropDownValue = '₹';
  String value = "0";
  String name = "";
  String message = "";
  var items = [
    r'$',
    '₹',
    '¥',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 1,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                _instance.dataOfCreator.profileUrl.toString(),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              _instance.dataOfCreator.userName.toString(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.check_circle_rounded,
              color: Colors.blue,
              size: 20,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Send your love to ${_instance.dataOfCreator.userName}",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Become a real fan",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                children: [
                  TextField(
                    onChanged: (abc) {
                      setState(() {
                        value = abc;
                      });
                    },
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      prefixIcon: Container(
                        padding: const EdgeInsets.only(left: 25, right: 10),
                        height: 25,
                        width: 80,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            value: dropDownValue,
                            icon: const Icon(
                              Icons.unfold_more_outlined,
                            ),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                      prefixStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      hintText: "2000",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextField(
                    onChanged: (abc) {
                      setState(() {
                        name = abc;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Your name (Optional)",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    onChanged: (abc) {
                      setState(() {
                        message = abc;
                      });
                    },
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Say something nice.. (Optional)",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4904DA), // B
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      //border radius equal to or more than 50% of width
                    )),
                child: SizedBox(
                  width: 120,
                  height: 45,
                  child: Center(
                    child: Text(
                      "Support $dropDownValue$value",
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  if (int.parse(value) > 0) {
                    _instance.donations.add(
                      DonationHistory(
                        _instance.dataOfCreator.id,
                        dropDownValue,
                        value,
                        name.isNotEmpty ? name : "-",
                        message.isNotEmpty ? message : "-",
                      ),
                    );
                    Navigator.pushReplacementNamed(context, ProfilePage.name);
                  } else {
                    Get.snackbar(
                      "Value not processed",
                      "Value should be not null or less than 1",
                      backgroundColor: const Color(0xFF4904DA),
                      colorText: Colors.white,
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(seconds: 2),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
