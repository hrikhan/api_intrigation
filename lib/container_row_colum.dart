import 'package:flutter/material.dart';

class ContainerRowColum extends StatelessWidget {
  const ContainerRowColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("video player"),
        centerTitle: true,
      ),
      body: Container(
        width: 1300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "premium video",
                  style: TextStyle(fontSize: 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 1300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCircularContainer(
                              "primium to see ", Colors.blueGrey),
                          buildCircularContainer(
                              "primium to see ", Colors.blueGrey),
                          buildCircularContainer(
                              "primium to see ", Colors.blueGrey),
                          buildCircularContainer(
                              "primium to see ", Colors.blueGrey),
                          buildCircularContainer(
                              "row container", Colors.blueGrey),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "premium video 2",
                  style: TextStyle(fontSize: 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 1300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCircularContainer(
                              "no video get primium", Colors.green),
                          buildCircularContainer(
                              "no video get primium", Colors.blueGrey),
                          buildCircularContainer(
                              "no video get primium", Colors.brown),
                          buildCircularContainer(
                              "no video get primium", Colors.red),
                          buildCircularContainer(
                              "row container", Colors.yellow),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "leteast video",
                  style: TextStyle(fontSize: 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 1300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCircularContainer(
                              "no video get primium", Colors.brown),
                          buildCircularContainer(
                              "no video get primium", Colors.green),
                          buildCircularContainer(
                              "no video get primium", Colors.blueGrey),
                          buildCircularContainer(
                              "no video get primium", Colors.red),
                          buildCircularContainer(
                              "no video get primium", Colors.yellow),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildCircularContainer(
    String text,
    Color color,
  ) {
    return Container(
      height: 250,
      width: 250,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
