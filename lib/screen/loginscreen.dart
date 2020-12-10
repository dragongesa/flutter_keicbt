import 'package:flutter/material.dart';
import 'package:flutter_keicbt/controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 80),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                            "assets/images/keicbt.png",
                            isAntiAlias: true,
                            filterQuality: FilterQuality.medium,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Computer\nBased\nTest",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue[900],
                            height: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            onSaved: (newValue) =>
                                controller.username = newValue,
                            textInputAction: TextInputAction.next,
                            initialValue: controller.username,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Must Filled";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: "Username",
                              hintText: "Input Your Username Here",
                              suffixIcon: Icon(Icons.person_rounded),
                            ),
                          ),
                          GetBuilder<Controller>(
                              init: Controller(),
                              builder: (controller) {
                                return TextFormField(
                                  onSaved: (newValue) =>
                                      controller.password = newValue,
                                  // ignore: missing_return
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Must Filled";
                                    }
                                  },
                                  obscureText: controller.secured,
                                  decoration: InputDecoration(
                                      hintText: "Input Your Password Here",
                                      labelText: "Password",
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          controller.secured
                                              ? Icons.visibility_off_outlined
                                              : Icons.visibility_outlined,
                                        ),
                                        onPressed: () =>
                                            controller.secureText(),
                                      )),
                                );
                              }),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                child: GestureDetector(
                                  onTapUp: (p) {
                                    controller.textButtonColorLogin =
                                        Colors.blue;
                                    controller.update();
                                    print("Lupa kata sandi");
                                  },
                                  onTapDown: (p) {
                                    controller.textButtonColorLogin =
                                        Colors.red;
                                    controller.update();
                                  },
                                  child: GetBuilder<Controller>(
                                    builder: (controller) => Text(
                                      "Lupa kata sandi?",
                                      style: TextStyle(
                                        color: controller.textButtonColorLogin,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                              RaisedButton(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 15),
                                color: Colors.blue,
                                textColor: Colors.white,
                                textTheme: ButtonTextTheme.primary,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.login,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () => controller.validateLogin(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
