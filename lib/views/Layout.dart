import 'package:flutter/material.dart';
import 'package:training2/views/Home.dart';
import 'package:training2/views/profile.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(
              child: Home(),
            ),
            Divider(),
            Expanded(
              child: Profile(),
            ),
          ],
        ),
      ),
    );
  }
}
