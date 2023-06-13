import 'package:flutter/material.dart';
import 'package:training2/controllers/home_controller.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => Text(HomeController.name.value)),

            ElevatedButton(
              onPressed: () {
                HomeController.setName();
              },
              child: const Text('Add from Profile Page'),
            )
          ],
        ),
      ),);
  }
}
