import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setstate_limit_sample/product_controller.dart';
import 'package:setstate_limit_sample/stateful_widget_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(ProductController());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StatefulWidgetSample(),
    );
  }
}
