import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/shop/shop_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShopingController extends GetxController {
  //homeservice _homeservice = homeservice();
  late Homeservice homeservice;
  @override
  @override
  void onInit() {
    homeservice = Homeservice();
    getcatagories();
    super.onInit();
  }

  void getcatagories() async {
    try {
      http.Response response = await homeservice.getproduct();
      if (response.statusCode == 200) {
        print(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
