import 'package:flutter/material.dart';
import 'package:flutter_keicbt/screen/ujianscreen.dart';
import 'package:get/get.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: LayoutBuilder(builder: (context, constraints) {
        return Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            DashboardMenuItem(
                constraints, "Kartu Ujian", "assets/images/kartu_ujian.png"),
            DashboardMenuItem(
                constraints, "Jadwal Ujian", "assets/images/jadwal_ujian.png"),
            RaisedButton(
              onPressed: () {
                print("pressed");
                Get.to(UjianScreen());
              },
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: DashboardMenuItem(
                  constraints, "Mulai Ujian", "assets/images/mulai_ujian.png"),
            ),
            DashboardMenuItem(
                constraints, "Lihat Hasil", "assets/images/lihat_hasil.png"),
          ],
        );
      }),
    );
  }
}

class DashboardMenuItem extends StatelessWidget {
  final BoxConstraints constraints;
  final String text;
  final String icon;

  const DashboardMenuItem(this.constraints, this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: constraints.maxWidth / 2 - 10,
      height: constraints.maxWidth / 2 + 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        // border: Border.all(
        //   width: 1,
        //   color: Colors.black.withOpacity(.2),
        //   style: BorderStyle.solid,
        // ),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            spreadRadius: 0,
            offset: Offset(0, 2),
            color: Colors.grey.withOpacity(.1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Center(
                child: Image.asset(
              icon,
              width: 120,
              height: 120,
            )),
          ),
        ],
      ),
    );
  }
}
