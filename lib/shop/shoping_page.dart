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
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: GetBuilder<ShopingController>(builder: (_) {
          return ListView.builder(
              itemCount: shopingController.products.length,
              itemBuilder: (context, index) {
                final product = shopingController.products[index];
                return Card(
                  color: Colors.grey[200],
                  elevation: 5,
                  child: ListTile(
                    leading: Container(
                      height: 400,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Image.network(
                        product.image!,
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(
                      product.title!,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      product.description!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    trailing: Text(
                      product.price.toString(),
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                );
              });
        }));
  }
}
