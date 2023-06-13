import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training2/controllers/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(),
            Obx(() => Text(HomeController.count.string)),
            Obx(() => Text(HomeController.name.string)),
            TextField(
              controller: HomeController.textController.value,
              onChanged: (value) {
                HomeController.setName();
              },
            ),
            ElevatedButton(
              onPressed: () {
                HomeController.add();
              },
              child: const Text('Add 1'),
            ),
            ElevatedButton(
              onPressed: () {
               HomeController.minus();
              },
              child: const Text('Minus 1'),
            ),
          ],
        ),
      ),
    );
  }
}

