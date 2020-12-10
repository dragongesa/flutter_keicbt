import 'package:flutter/material.dart';
import 'package:flutter_keicbt/controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Image.asset(
            "assets/images/keicbt.png",
            scale: .5,
            width: MediaQuery.of(context).size.width - 200,
          ),
        ));
  }
}
