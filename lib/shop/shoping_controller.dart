import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_all_widgets/shop/product_model.dart';
import 'package:flutter_all_widgets/shop/shop_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShopingController extends GetxController {
  List<product> products = []; // List of products
  List<String> categories = []; // List of categories
  bool isloading = false;
  late Homeservice homeservice;

  @override
  void onInit() {
    homeservice = Homeservice();
    getproduct();
    getcategory();
    super.onInit();
  }

  void getproduct() async {
    try {
      isloading = true;
      http.Response response = await homeservice.getproduct();

      if (response.statusCode == 200) {
        var productdata = jsonDecode(response.body);
        for (var i = 0; i < productdata.length; i++) {
          products.add(product.fromJson(productdata[i]));
        }

        isloading = false;
        print(products);
        update();
      }
    } catch (e) {
      print(e);
    }
  }

  void getcategory() async {
    try {
      isloading = true;
      update();
      http.Response response = await homeservice.getcategories();
      if (response.statusCode == 200) {
        var categoriesdata = jsonDecode(response.body);
        for (var i = 0; i < categoriesdata.length; i++) {
          categories.add(categoriesdata[i]);
          isloading = false;
          update();
        }
      } else {
        isloading = false;
        print("Error getting categories");
        update();
      }
    } catch (e) {
      print(e);
    }
    isloading = false;
  }
}
