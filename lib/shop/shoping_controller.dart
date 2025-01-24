import 'dart:convert';

import 'package:flutter_all_widgets/shop/product_model.dart';
import 'package:flutter_all_widgets/shop/shop_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShopingController extends GetxController {
  List<product> products = []; // List of products
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
        var productdata = jsonDecode(response.body);
        for (var i = 0; i < productdata.length; i++) {
          products.add(product.fromJson(productdata[i]));
        }
        print(products);
        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
