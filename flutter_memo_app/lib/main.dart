import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_memo_app/home.dart';
import 'package:flutter_memo_app/memo_list_controller.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyA1kLLF7VY0NVxe4_y21zoJ106hDgIiaUk',
      appId: '1:773679401434:android:5433c3ed56b6f70213d8e3',
      messagingSenderId: '773679401434',
      projectId: 'flutter-memo-app-d8b76',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(MemoListController());
      }),
      home: Home(),
    );
  }
}