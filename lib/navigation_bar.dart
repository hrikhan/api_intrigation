import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/container_row_colum.dart';
import 'package:flutter_all_widgets/drawer_and_button.dart';
import 'package:flutter_all_widgets/gridview_builder.dart';
import 'package:flutter_all_widgets/listView_builder.dart';
import 'package:flutter_all_widgets/shop/shoping_page.dart';

class buttomnavbar extends StatefulWidget {
  buttomnavbar({super.key});

  @override
  State<buttomnavbar> createState() => buttomnavbarState();
}

class buttomnavbarState extends State<buttomnavbar> {
  List<Widget> _page = [
    DrawerAndButton(),
    ListviewBuilder(),
    ContainerRowColum(),
    GridviewBuilderCustom(),
    ShopingPage(),
  ];
  var seletedIndex = 4;

  void ontap(index) {
    setState(() {
      seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(size: 30),
          currentIndex: seletedIndex,
          onTap: ontap, // Here you use the ontap method
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: " music "),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_camera_back), label: "Video"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallpaper), label: "wallpaper"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop "),
          ]),
    );
  }
}
