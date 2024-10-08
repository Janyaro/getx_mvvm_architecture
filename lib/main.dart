import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_mvvm/resource/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoute.approutes(),
    );
  }
}
