import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'screen/splashscreen.dart';

void main() {
  runApp(KeiCbt());
}

class KeiCbt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: SplashScreen(),
    );
  }
}
