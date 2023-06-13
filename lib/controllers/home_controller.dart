import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController {
  static RxInt count = 0.obs;
  static RxString name = 'John'.obs;

  static Rx<TextEditingController> textController = TextEditingController().obs;

  static void add() {
    count.value++;
    name.value = 'Jane';
  }

  static void minus() {
    count.value--;
    name.value = 'John';
  }

  static void setName() {
    name.value = textController.value.text;
  }
}
