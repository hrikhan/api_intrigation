import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/modelClass.dart';
import 'package:audioplayers/audioplayers.dart';

class ListviewBuilder extends StatefulWidget {
  ListviewBuilder({super.key});

  @override
  _ListviewBuilderState createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  final List<Modelclass> bangladeshiSongs = [
    Modelclass('1', 'আমার সোনার বাংলা', ' Somobeto', '5'),
    Modelclass('2', 'একলা চলো রে', 'রবীন্দ্রনাথ ঠাকুর', '4.5'),
    Modelclass('3', 'আমি বাংলায় গান গাই', 'প্রতুল মুখোপাধ্যায়', '4.8'),
    Modelclass('4', 'ধন ধান্য পুষ্পে ভরা', 'দ্বিজেন্দ্রলাল রায়', '4.7'),
    Modelclass('5', 'ও আমার দেশের মাটি', 'রবীন্দ্রনাথ ঠাকুর', '4.6'),
    Modelclass('6', 'মেলায় যাইরে', 'জেমস', '4.9'),
    Modelclass('7', 'চলো বদলে যাই', 'অর্ণব', '4.4'),
    Modelclass('8', 'তোমাকে চাই', 'কবির সুমন', '4.3'),
    Modelclass('9', 'বেলা বোস', 'অঞ্জন দত্ত', '4.2'),
    Modelclass('10', 'মন শুধু মন ছুঁয়েছে', 'হাবিব ওয়াহিদ', '4.1'),
    Modelclass('11', 'আবার এল যে সন্ধ্যা', 'হেমন্ত মুখোপাধ্যায়', '4.0'),
    Modelclass('14', 'এই রাত তোমার আমার', 'হেমন্ত মুখোপাধ্যায়', '4.3'),
    Modelclass('15', 'আমার স্বপ্নে দেখা রাজকন্যা', 'হেমন্ত মুখোপাধ্যায়', '4.4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Music player",
                  style: TextStyle(fontSize: 30, color: Colors.white))),
          backgroundColor: Colors.blue,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Favorite bangladeshi songs",
                style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: bangladeshiSongs.length,
                itemBuilder: (context, index) =>
                    showdata(bangladeshiSongs[index])),
          ),
        ]));
  }

  Widget showdata(Modelclass song) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.brown,
          child: Text(song.id,
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        title: Text(
          song.favoriteSongName,
          style: TextStyle(
              fontSize: 25, color: const Color.fromARGB(255, 1, 14, 22)),
        ),
        subtitle: Text("গায়ক : ${song.singerName}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.play_arrow, color: Colors.black, size: 30),
              onPressed: () async {
                try {
                  await _audioPlayer.play(AssetSource('image/p_encanto_homeent_22359_4892ae1c.jpeg'));
                } catch (e) {
                  print("Error playing audio: $e");
                }
              },
            ),
            Text(
              song.rate,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
