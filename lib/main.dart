import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rcr_mobile/core.dart';

void main() {
  runApp(MaterialApp(
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    title: 'RCR Mobile',
    home: LoginView(),
  ));
}
