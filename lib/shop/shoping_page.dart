import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/shop/catagories.dart';
import 'package:flutter_all_widgets/shop/shimmar_effect.dart';
import 'package:flutter_all_widgets/shop/shoping_controller.dart';
import 'package:get/get.dart';

class ShopingPage extends StatelessWidget {
  ShopingPage({super.key});
  ShopingController shopingController = Get.put(ShopingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Shoping Time',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.blue,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                child: GetBuilder<ShopingController>(builder: (context) {
                  return shopingController.iscatagoriesfound
                      ? listshimmar()
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: shopingController.categories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () {
                                  print(
                                      "Selected Category: ${shopingController.categories[index]}");
                                  shopingController.specification_catagories(
                                      shopingController.categories[index]);
                                  Get.to(Catagories(
                                    catagoriesname: shopingController
                                        .categories[index]
                                        .toUpperCase(),
                                  ));
                                },
                                child: Container(
                                  height: 60,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.blue),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Text(
                                      shopingController.categories[index]
                                          .toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  child: Text(
                    "Popular product",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 2000,
                  child: GetBuilder<ShopingController>(builder: (_) {
                    return shopingController.isloading
                        ? ShimmarEffect()
                        : GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 10,
                                    mainAxisExtent: 230),
                            itemCount: shopingController.products.length,
                            itemBuilder: (BuildContext context, int index) {
                              final product = shopingController.products[index];
                              return Card(
                                color: Colors.white70,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.network(
                                                  shopingController
                                                      .products[index].image!,
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
                                          shopingController
                                              .products[index].title!,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                            "rating: ${product.rating!.rate.toString()}"),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "price ${product.price.toString()}\$",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'add+',
                                              style: TextStyle(
                                                  color: Colors.red[400],
                                                  fontSize: 20),
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
                ),
              ),
            ],
          ),
        ));
  }
}
