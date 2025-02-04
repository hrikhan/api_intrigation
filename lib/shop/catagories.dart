import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/shop/shimmar_effect.dart';
import 'package:flutter_all_widgets/shop/shoping_controller.dart';
import 'package:get/get.dart';

class Catagories extends StatelessWidget {
  Catagories({super.key, required this.catagoriesname});
  String catagoriesname = '';
  ShopingController shopingController = Get.find<ShopingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catagoriesname),
      ),
      body: GetBuilder<ShopingController>(builder: (_) {
        return shopingController.isloading
            ? ShimmarEffect()
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 230),
                itemCount: shopingController.specificcatagories.length,
                itemBuilder: (BuildContext context, int index) {
                  final product2 = shopingController.specificcatagories[index];
                  return Card(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      shopingController
                                          .specificcatagories[index].image!,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              product2.title!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("rating${product2.rating!.rate.toString()}"),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "price ${product2.price.toString()}\$",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'add+',
                                  style: TextStyle(
                                      color: Colors.red[400], fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
      }),
    );
  }
}
