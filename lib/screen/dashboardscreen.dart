import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keicbt/components/dashboardheader.dart';
import 'package:flutter_keicbt/components/dashboardmenu.dart';
import 'package:flutter_keicbt/components/papanpengumuman.dart';
import 'package:flutter_keicbt/controller.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.blue),
      child: Scaffold(
        body: SafeArea(
            child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.red,
                child: Text("ANjiiinggg"),
              ),
            ),
            GetBuilder<Controller>(
              builder: (controller) => Positioned(
                top: controller.headerHeight,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: 200,
                ),
              ),
            ),
            SingleChildScrollView(
              controller: controller.scrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //AppBar
                  //end of AppBar
                  DashboardHeader(),
                  PapanPengumuman(),
                  DashboardMenu(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: double.infinity,
                    height: 30,
                    color: Colors.grey.shade200,
                    child: Center(
                      child: Text("Copyright 2020"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
