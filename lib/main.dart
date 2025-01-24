import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/loginpage/registration.dart';
import 'package:flutter_all_widgets/navigation_bar.dart';
import 'package:get/get.dart';
import 'package:flutter_all_widgets/loginpage/get_storage_utils.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       home:getsttorage.is_first_time_login() ? login() : buttomnavbar());
  }
}
