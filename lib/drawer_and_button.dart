import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/container_row_colum.dart';
import 'package:flutter_all_widgets/listView_builder.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_all_widgets/loginpage/get_storage_utils.dart';
import 'package:flutter_all_widgets/loginpage/registration.dart';
import 'package:get/get.dart';

class DrawerAndButton extends StatefulWidget {
  const DrawerAndButton({super.key});

  @override
  State<DrawerAndButton> createState() => _DrawerAndButtonState();
}

class _DrawerAndButtonState extends State<DrawerAndButton> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 300,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.amber,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                    Text(
                      "User name",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "defaultuser@gmail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text("Player"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListviewBuilder()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.class_),
              title: Text("class "),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerRowColum()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("about"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: InkWell(
                onTap: () {
                  getsttorage.set_first_time_login(true);
                  Get.offAll(() => login());
                },
                child: Text(
                  "logout",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
              subtitle: Text("your account login "),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOP movies",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          icon: Icon(
                            Icons.workspace_premium,
                            color: Colors.white,
                            size: 10,
                          ),
                          onPressed: () {},
                          label: Text(
                            "premium",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildContainerforimage(
                          "Top movies",
                          Image.asset(
                            "image/top-10-tamil-movies10.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainerforimage(
                          "Top movies",
                          Image.asset(
                            "image/images.jpeg",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: Text(
                            "more...",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top music",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "more music..",
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.brown,
                            child: Text("1"),
                          ),
                          title: Text("song name"),
                          subtitle: Text("singer name"),
                          trailing: IconButton(
                            icon: Icon(Icons.play_arrow),
                            onPressed: () {
                              _audioPlayer.play(AssetSource(
                                  'audio/Amar-Sonar-Bangla-Somobeto.mp3'));
                            },
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.music_note),
                        title: Text("music"),
                      ),
                      ListTile(
                        leading: Icon(Icons.video_camera_back),
                        title: Text("video"),
                      )
                    ],
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget buildContainerforimage(String text, Image image) {
  return Container(
    height: 250,
    width: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 250, width: 250, child: image),
          ),
          Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
