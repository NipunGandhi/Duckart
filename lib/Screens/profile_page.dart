import 'package:duckart/Provider/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  MyController myController = Get.find();

  static const String name = "/ProfilePage";

  @override
  Widget build(BuildContext context) {
    var abc = myController.donations.reversed.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4904DA),
        title: const Text("Profile Page"),
        elevation: 1,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage(
                        'https://www.pngfind.com/pngs/m/110-1102775_download-empty-profile-hd-png-download.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Nipun Gandhi",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: abc.isEmpty
                ? const Text("No transactions to show")
                : ListView.builder(
                    itemCount: abc.length,
                    itemBuilder: (context, index) {
                      String name = abc[index].name.toString();
                      String message = abc[index].message.toString();
                      String id = abc[index].id.toString();
                      String currency = abc[index].currency.toString();
                      String amount = abc[index].amount.toString();
                      return Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF4904DA),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        height: 35,
                        margin: const EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            "$currency$amount Donated to ID - $id by $name with message $message",
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
