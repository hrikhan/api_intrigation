import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/shop/shoping_controller.dart';
import 'package:get/get.dart';

class ShopingPage extends StatelessWidget {
  ShopingPage({super.key});
  ShopingController shopingController = Get.put(ShopingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our product details'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Text('Shoping Page'),
      ),
    );
  }
}
