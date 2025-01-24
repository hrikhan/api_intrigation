import 'package:flutter/material.dart';

class GridviewBuilderCustom extends StatelessWidget {
  GridviewBuilderCustom({super.key});
  final List<String> images = [
    "image/depositphotos_452255100-stock-photo-yellow-leaves-autumn-forest-nature.jpg",
    "image/images (1).jpeg",
    "image/images (2).jpeg",
    "image/pexels-beevee-1020478.jpg",
    "image/pexels-kasperphotography-1042423.jpg",
    "image/top-10-tamil-movies10.png",
    "image/images (1).jpeg",
    "image/images (2).jpeg",
    "image/pexels-beevee-1020478.jpg",
    "image/pexels-kasperphotography-1042423.jpg",
    "image/top-10-tamil-movies10.png",
    "image/images (1).jpeg",
    "image/images (2).jpeg",
    "image/pexels-beevee-1020478.jpg",
    "image/pexels-kasperphotography-1042423.jpg",
    "image/top-10-tamil-movies10.png",
    "image/images (1).jpeg",
    "image/images (2).jpeg",
    "image/pexels-beevee-1020478.jpg",
    "image/pexels-kasperphotography-1042423.jpg",
    "image/top-10-tamil-movies10.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("wallpaper",
                style: TextStyle(fontSize: 30, color: Colors.white))),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("favorite",
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueGrey)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Recommended",
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("new wallpaper",
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("ANimal wallpaper",
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("cartoon",
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5000,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 12,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.black54,
                            child: Text(
                              "Image ${index + 1}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
