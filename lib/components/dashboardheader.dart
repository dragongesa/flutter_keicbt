import 'package:flutter/material.dart';
import 'package:flutter_keicbt/controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardHeader extends StatelessWidget {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      builder: (controller) => AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 200),
        curve: Curves.bounceInOut,
        style: TextStyle(
          color: Colors.white.withOpacity(controller.headerTextOpacity),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat datang,",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Administrator",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text("serangdiajony@gmail.com"),
                    Text("X TKJ 1"),
                  ],
                ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Text("Logout")
                    ],
                  ),
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setInt('value', 0);
                    controller.cekLogin();
                  },
                ),
              ],
            )),
      ),
    );
  }
}
