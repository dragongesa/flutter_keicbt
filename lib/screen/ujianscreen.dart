import 'package:flutter/material.dart';
import 'package:flutter_keicbt/controller.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class UjianScreen extends StatefulWidget {
  @override
  _UjianScreenState createState() => _UjianScreenState();
}

class _UjianScreenState extends State<UjianScreen> {
  TextEditingController textEditingController = new TextEditingController();
  final Controller controller = Get.find();
  @override
  void initState() {
    textEditingController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: AnimatedDefaultTextStyle(
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.blue,
          fontFamily: 'Nunito',
          fontSize: 18,
        ),
        duration: Duration(milliseconds: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Text("Selamat datang di halaman ujian"),
            Text(
              "Ujian yang sedang berlangsung adalah",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  "Bahasa Indonesia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )),
            SizedBox(height: 15),
            Text(
              "Untuk melanjutkan, masukkan token",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 15),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 3,
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Bagaimana cara mendapatkan token?",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            Form(
              key: controller.formKeyUjian,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    obscureText: false,
                    obscuringCharacter: '*',
                    animationType: AnimationType.scale,
                    validator: (v) {
                      if (v.length < 6) {
                        return "Isi semua kolom";
                      } else {
                        return null;
                      }
                    },
                    cursorColor: Colors.black,
                    cursorWidth: .4,
                    cursorHeight: 10,
                    animationDuration: Duration(milliseconds: 200),
                    textStyle: TextStyle(fontSize: 20, height: 1.6),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: false,

                    onCompleted: (v) {
                      print("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      controller.tokenUjian = value;
                      print(controller.tokenUjian);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
